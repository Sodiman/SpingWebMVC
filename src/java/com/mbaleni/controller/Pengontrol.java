/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mbaleni.controller;

import com.ody.checker.Delegasi;
import com.ody.implementor.PengecekDBImpl;
import com.sitirejo.GetSetKK;
import com.sitirejo.GetSetKKData;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Ody
 */
@Controller
public class Pengontrol {

    @Autowired
    private Delegasi deleg;

    @Autowired
    private PengecekDBImpl cekkk;

    @RequestMapping(value = "/")
    public ModelAndView displayWelcome() {
        ModelAndView mod = new ModelAndView("ody");

        return mod;
    }

    @RequestMapping(value = "/kartukeluarga", method = RequestMethod.GET)
    public ModelAndView displayKK() {
        ModelAndView mod = new ModelAndView("kk");
        GetSetKK gk = new GetSetKK();
        mod.addObject("gk", gk);

        return mod;
    }

    @RequestMapping(value = "/koperasi", method = RequestMethod.GET)
    public ModelAndView displayKoperasi() {
        ModelAndView mod = new ModelAndView("koperasi");

        return mod;
    }

    @RequestMapping(value = "/kartukeluarga", method = RequestMethod.POST)
    public ModelAndView executeKK(@ModelAttribute("gk") GetSetKK gk) {
        ModelAndView mod = null;
        List<GetSetKK> daftar = null;
        List<GetSetKKData> daft = null;

        try {
            boolean isValidKK = deleg.isValidKK(gk.getNokk());
            if (isValidKK) {
                daftar = cekkk.getKK();
                mod = new ModelAndView("kk", "daftar", daftar);
                daft = cekkk.getKKData(gk.getKepkel());
                mod.addObject("daft", daft);
            } else {
                String msg = "<div style = 'color:red'>Invalid input, please try again !!</div>";
                mod = new ModelAndView("kk");
                mod.addObject("msg", msg);
                mod.addObject("gk", gk);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mod;
    }
}
