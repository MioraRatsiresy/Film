/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.HibernateDao;
import java.io.File;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Film;
import model.Plateau;
import model.Scene;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
    public String index() {
        return "index";
    }

    @RequestMapping("/formulairescene")
    public String scene(Model model) {
        model.addAttribute("plateau", dao.findAll(Plateau.class));
        return "scene";
    }

    @RequestMapping("/liste/film")
    public String listefilm(Model model, HttpServletRequest request) {
        /* List<Film> film=dao.findAll(Film.class);
        for(int i=0;i<film.size();i++){
           System.out.println(film.get(i).getTitre());
        }*/
        int npp = 4;
        int numpage = 1;
        if (request.getParameter("numpage") != null) {
            numpage = Integer.parseInt(request.getParameter("numpage"));
        }
        int indiceprime = numpage * npp - npp;
        model.addAttribute("film", dao.paginateWhere(Film.class, indiceprime, npp));
        model.addAttribute("numpage", numpage);
        return "index";
    }

    @RequestMapping("/liste/scene/{idfilm}")
    public String listescene(@PathVariable int idfilm, Model model, HttpServletRequest request) {
        /*List<Scene> film=dao.findAll(Scene.class);
        for(int i=0;i<film.size();i++){
           System.out.println(film.get(i).getDescriptionscene());
        }*/
        Scene scene = new Scene();
        scene.setIdfilm(idfilm);
        int npp = 4;
        int numpage = 1;
        if (request.getParameter("numpage") != null) {
            numpage = Integer.parseInt(request.getParameter("numpage"));
        }
        int indiceprime = numpage * npp - npp;
        model.addAttribute("scene", dao.paginateWhere(scene, indiceprime, npp));
        model.addAttribute("numpage", numpage);
        return "index";
    }

    @RequestMapping("/insertFilm")
    public String insertFilm(@RequestParam("sary") MultipartFile file, HttpServletRequest request) {
        Film film = new Film();
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
        return "redirect:/liste/film";
    }

    @RequestMapping("/insertScene/{idfilm}")
    public String insertScene(@PathVariable int idfilm, HttpServletRequest request) {
        Scene scene = new Scene();
        try {
            scene.setIdauteur(Integer.parseInt(request.getParameter("auteur")));
            scene.setIdfilm(idfilm);
            scene.setIdplateau(Integer.parseInt(request.getParameter("idplateau")));
            scene.setDescriptionscene(request.getParameter("description"));
            dao.create(scene);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "scene";
    }
}
