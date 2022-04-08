/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mbaleni.controller;

import com.ody.checker.Delegasi;
import com.ody.distributor.Pendistribusi;
import com.ody.implementor.PengecekDBImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Ody
 */
@Controller
public class PengontrolEdit {

    @Autowired
    PengecekDBImpl cek;

    @Autowired
    private Delegasi delegasi;

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView loginDisplayEdit(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView model = new ModelAndView("logedit");
        Pendistribusi distrib = new Pendistribusi();
        model.addObject("distrib", distrib);

        return model;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public ModelAndView loginExecuteEdit(HttpServletRequest request, HttpServletResponse response, @PathVariable int id, @ModelAttribute("distrib") Pendistribusi distrib) {
        ModelAndView mdl = null;
        Pendistribusi p = null;

        try {
            boolean isValidUser = delegasi.isValidUser(distrib.getUsername(), distrib.getPassword());
            if (isValidUser) {
                p = cek.getPById(id);
                return new ModelAndView("edit", "command", p);
            } else {
                String m = "<div style = 'color:red'>Invalid username or password !!</div>";

                mdl = new ModelAndView("logedit");
                mdl.addObject("distrib", distrib);
                mdl.addObject("message", m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mdl;
    }
    
    @RequestMapping(value = "/editsave", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("emp")Pendistribusi p) {
        cek.update(p);
        return new ModelAndView("redirect:/");
    }
}
