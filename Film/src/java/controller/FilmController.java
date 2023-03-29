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

import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author USER
 */
@Controller
@CrossOrigin
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
        System.out.println(indiceprime);
        model.addAttribute("film", dao.findAll(Film.class));
        model.addAttribute("numpage", numpage);
        return "Film";
    }

    @GetMapping("/planning/{idfilm}")
    public String planning(@PathVariable int idfilm,Model model, @RequestParam String d1, @RequestParam String d2){
        System.out.println("zfzefe");
        model.addAttribute("film", dao.findById(Film.class, idfilm));
        model.addAttribute("dates", dao.findAll(Planning.class));
        return "Programme";
    }

    @GetMapping("/planning/date/{idfilm}")
    public String datePlanning(@PathVariable int idfilm, Model model){
        model.addAttribute("film", dao.findById(Film.class, idfilm));
        return "dateProgramme";
    }

    @GetMapping("/actionDetail/{idfilm}/{idScene}")
    public String actionDetail(@PathVariable int idfilm,@PathVariable int idScene,Model model){
        Scene scene = new Scene();
        scene.setId(idScene);
        scene.setIdfilm(idfilm);
        model.addAttribute("film", dao.findById(Film.class, idfilm));
        model.addAttribute("scene", dao.findWhere(scene));
        return "ActionDetail";
    }

    @RequestMapping("/liste/scene/{idfilm}")
    public String listescene(@PathVariable int idfilm, Model model, HttpServletRequest request) {
        /*List<Scene> film=dao.findAll(Scene.class);
        for(int i=0;i<film.size();i++){
           System.out.println(film.get(i).getDescriptionscene());
        }*/
        SceneView scene = new SceneView();
        scene.setIdfilm(idfilm);
        int npp = 4;
        int numpage = 1;
        if (request.getParameter("numpage") != null) {
            numpage = Integer.parseInt(request.getParameter("numpage"));
        }
        int indiceprime = numpage * npp - npp;
        model.addAttribute("scene", dao.findAll(Scene.class));
        model.addAttribute("film", dao.findById(Film.class, idfilm));
        model.addAttribute("numpage", numpage);
        return "Detail";
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

    @RequestMapping("/rechercheavancefilm")
    public String recherchefilm(Model model, HttpServletRequest request) {
        String search = request.getParameter("search").toLowerCase();
        
        int npp = 4;
        int numpage = 1;
        if (request.getParameter("numpage") != null) {
            numpage = Integer.parseInt(request.getParameter("numpage"));
        }
        int indiceprime = numpage * npp - npp;
        
        List<Film> zety=dao.paginateWhereFilm(search, indiceprime, npp);
        for(int i=0;i<zety.size();i++){
           System.out.println(zety.get(i).getDescriptionfilm());
        }
        model.addAttribute("result", dao.paginateWhereFilm(search, indiceprime, npp));
        model.addAttribute("recherche", search);
        model.addAttribute("numpage", numpage);
        return "index";
    }
    @RequestMapping("/rechercheavancescene")
    public String recherchescene(Model model, HttpServletRequest request) {
        String search = request.getParameter("search").toLowerCase();
        
        int npp = 4;
        int numpage = 1;
        if (request.getParameter("numpage") != null) {
            numpage = Integer.parseInt(request.getParameter("numpage"));
        }
        int indiceprime = numpage * npp - npp;
        
        List<SceneView> zety=dao.paginateWhereScene(search, indiceprime, npp);
        for(int i=0;i<zety.size();i++){
           System.out.println(zety.get(i).getDescriptionscene());
        }
        model.addAttribute("result", dao.paginateWhereScene(search, indiceprime, npp));
        model.addAttribute("recherche", search);
        model.addAttribute("numpage", numpage);
        return "index";
    }

}
