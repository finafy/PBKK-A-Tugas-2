package com.fina.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("main-menu", "lagu", new Lagu());
    }
    
    @RequestMapping(value = "/helloAction", method = RequestMethod.POST)
    public String submit(@ModelAttribute("lagu")Lagu lagu, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "error";
        }
        model.addAttribute("judulLagu", lagu.getJudulLagu());
        model.addAttribute("genre", lagu.getGenre());
        model.addAttribute("tahun", lagu.getTahun());
        model.addAttribute("pencipta", lagu.getPencipta());
        return "hello-action";
    }
}
