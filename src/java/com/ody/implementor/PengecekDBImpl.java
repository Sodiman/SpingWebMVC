/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ody.implementor;

import com.ody.checker.PengecekDB;
import com.ody.distributor.Pendistribusi;
import com.sitirejo.GetSetKK;
import com.sitirejo.GetSetKKData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Ody
 */
public class PengecekDBImpl implements PengecekDB {

    DataSource dataSource;
    JdbcTemplate temp;

    public void setTemp(JdbcTemplate temp) {
        this.temp = temp;
    }

    public DataSource getDatasource() {
        return this.dataSource;
    }

    public void setDatasource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    //Edit DataBase
    public int save(Pendistribusi p) {
        String sql = "insert into administrator.admin (username, password, email, regdate) value ('" + p.getUsername() + "', '" + p.getPassword() + "', '" + p.getEmail() + "', curdate())";
        return temp.update(sql);
    }

    public int update(Pendistribusi p) {
        String sql = "update administrator.admin set username = '" + p.getUsername() + "', password = '" + p.getPassword() + "', email = '" + p.getEmail() + "', regdate = curdate() where id = '" + p.getId() + "'";
        return temp.update(sql);
    }

    public int refresh1(Pendistribusi p) {
        String sql = "alter table administrator.admin drop id";
        return temp.update(sql);
    }

    public int refresh2(Pendistribusi p) {
        String sql = "alter table administrator.admin add id bigint(200) not null auto_increment first, add primary key (id)";
        return temp.update(sql);
    }

    public int delete(int id) {
        String sql = "delete from administrator.admin where id = '" + id + "'";
        return temp.update(sql);
    }

    public Pendistribusi getPById(int id) {
        String sql = "SELECT * FROM administrator.admin where id = ?";
        return temp.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Pendistribusi.class));
    }

    public List<Pendistribusi> getDBase() {
        return temp.query("SELECT * FROM administrator.admin", new RowMapper<Pendistribusi>() {
            @Override
            public Pendistribusi mapRow(ResultSet rs, int row) throws SQLException {
                Pendistribusi p = new Pendistribusi();
                p.setId(rs.getInt(1));
                p.setUsername(rs.getString(2));
                p.setPassword(rs.getString(3));
                p.setEmail(rs.getString(4));
                p.setRegdate(rs.getString(5));

                return p;
            }
        });
    }

    public List<GetSetKK> getKK() {
        return temp.query("SELECT * FROM sitirejo.kk", new RowMapper<GetSetKK>() {
            @Override
            public GetSetKK mapRow(ResultSet rs, int row) throws SQLException {
                GetSetKK gs = new GetSetKK();
                gs.setId(rs.getInt(1));
                gs.setNokk(rs.getString(2));
                gs.setKepkel(rs.getString(3));
                gs.setAlamat(rs.getString(4));
                gs.setRt(rs.getString(5));
                gs.setRw(rs.getString(6));
                gs.setDesa(rs.getString(7));
                gs.setKecamatan(rs.getString(8));
                gs.setKabupaten(rs.getString(9));
                gs.setKodepos(rs.getString(10));
                gs.setProvinsi(rs.getString(11));
                return gs;
            }
        });
    }

    public List<GetSetKKData> getKKData(String kepkel) {
        String sql = "SELECT * FROM sitirejo."+ kepkel;
        return temp.query(sql, new RowMapper<GetSetKKData>() {
            @Override
            public GetSetKKData mapRow(ResultSet rs, int row) throws SQLException {
                GetSetKKData gkd = new GetSetKKData(); //To change body of generated methods, choose Tools | Templates.
                gkd.setId(rs.getInt(1));
                gkd.setNama(rs.getString(2));
                gkd.setNik(rs.getString(3));
                gkd.setGen(rs.getString(4));
                gkd.setTmplr(rs.getString(5));
                gkd.setTanggallahir(rs.getString(6));
                gkd.setAgama(rs.getString(7));
                gkd.setPendidikan(rs.getString(8));
                gkd.setPekerjaan(rs.getString(9));
                gkd.setStatus(rs.getString(10));
                gkd.setStatushubungan(rs.getString(11));
                gkd.setKewarganegaraan(rs.getString(12));
                gkd.setPaspor(rs.getString(13));
                gkd.setKitaskitap(rs.getString(14));
                gkd.setAyah(rs.getString(15));
                gkd.setIbu(rs.getString(16));
                return gkd;
            }
        });
    }

    @Override
    public boolean isValidUser(String username, String password) throws SQLException {
        String query = "select count(1) from administrator.admin where username = ? and password = ?";

        PreparedStatement ps = dataSource.getConnection().prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return (rs.getInt(1) > 0);
        } else {
            return false;
        }
    }

    @Override
    public boolean isValidKK(String nokk) throws SQLException {
        String sql = "SELECT count(1) from sitirejo.kk where nokk = ?";
        PreparedStatement ps = dataSource.getConnection().prepareStatement(sql);
        ps.setString(1, nokk);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return (rs.getInt(1) > 0);
        }
        return false;
    }
}
