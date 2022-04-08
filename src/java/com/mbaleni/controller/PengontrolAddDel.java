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
public class PengontrolAddDel {

    @Autowired
    private Delegasi delegasi;

    @Autowired
    private PengecekDBImpl cek;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView loginDisplayAdd(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView model = new ModelAndView("logadd");
        Pendistribusi distrib = new Pendistribusi();
        model.addObject("distrib", distrib);

        return model;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView loginExecuteAdd(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("distrib") Pendistribusi distrib) {
        ModelAndView mdl = null;

        try {
            boolean isValidUser = delegasi.isValidUser(distrib.getUsername(), distrib.getPassword());
            if (isValidUser) {
                return new ModelAndView("add", "command", new Pendistribusi());
            } else {
                String m = "<div style = 'color:red'>Invalid username or password !!</div>";

                mdl = new ModelAndView("logadd");
                mdl.addObject("distrib", distrib);
                mdl.addObject("message", m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mdl;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView saveAdd(@ModelAttribute("emp") Pendistribusi p) {
        cek.save(p);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable int id) {
        cek.delete(id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/refresh")
    public ModelAndView refresh(@ModelAttribute("emp") Pendistribusi p) {
        cek.refresh1(p);
        cek.refresh2(p);
        return new ModelAndView("redirect:/");
    }
}
