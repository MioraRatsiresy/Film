/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.HibernateDao;
import java.io.File;
import javax.servlet.http.HttpServletRequest;
import model.Film;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author USER
 */
@Controller
public class FilmController {
    @Autowired
    HibernateDao dao;
    
    @RequestMapping("/index")
    public String index(){
        return "index";
    }
    @RequestMapping("/insertFilm")
    public String insertFilm(@RequestParam("sary") MultipartFile file, HttpServletRequest request,Model model) {
        Film film=new Film();
        try {
            String fileName = file.getOriginalFilename();
            System.out.println("NOM DE FICHIER : " + fileName);
            file.transferTo(new File(
                    "D:\\ITU\\GitHub\\Film\\Film\\web\\resources\\" + fileName));
            film.setSary(fileName);
            film.setTitre(request.getParameter("titre"));
            film.setDescriptionfilm(request.getParameter("description"));
            
            dao.create(film);
            
        } catch (Exception e) {
           e.printStackTrace();
        }
        return "index";
    }
}
