/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ody.checker;

import com.ody.servicer.Peladen;
import java.sql.SQLException;

/**
 *
 * @author Ody
 */
public class Delegasi {
    private Peladen peladen;

    public Peladen getPeladen() {
        return this.peladen;
    }

    public void setPeladen(Peladen peladen) {
        this.peladen = peladen;
    }
    
    public boolean isValidUser(String username, String password) throws SQLException {
        return peladen.isValidUser(username, password);
    }
    
    public boolean isValidKK(String nokk) throws SQLException {
        return peladen.isValidKK(nokk);
        
    }
}
