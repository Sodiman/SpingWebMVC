/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ody.checker;

import java.sql.SQLException;

/**
 *
 * @author Ody
 */
public interface PengecekDB {

    public boolean isValidUser(String username, String password) throws SQLException;

    public boolean isValidKK(String nokk) throws SQLException;
}
