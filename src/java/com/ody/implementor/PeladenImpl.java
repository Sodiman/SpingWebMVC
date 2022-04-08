/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ody.implementor;

import com.ody.checker.PengecekDB;
import com.ody.servicer.Peladen;
import java.sql.SQLException;

/**
 *
 * @author Ody
 */
public class PeladenImpl implements Peladen {

    private PengecekDB pengecekDB;

    public PengecekDB getPengecekDB() {
        return this.pengecekDB;
    }

    public void setPengecekDB(PengecekDB pengecekDB) {
        this.pengecekDB = pengecekDB;
    }

    @Override
    public boolean isValidUser(String username, String password) throws SQLException {
        return pengecekDB.isValidUser(username, password);
    }
    
    @Override
    public boolean isValidKK(String nokk) throws SQLException {
        return pengecekDB.isValidKK(nokk);
        
    }
}
