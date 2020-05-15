package beans.controller;

import backend.daos.UserDAO;
import backend.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class FirstController {

    private int scoreUser=0;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String displayFirstPage() {
        return "mainPage";
    }

    @RequestMapping(value = "/quiz", method = RequestMethod.GET)
    public String displayName() {
        return "quizPage";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String displayRegister() {
        return "register";
    }

    @RequestMapping(value = "/top", method = RequestMethod.GET)
    public String displayTop() {
        return "top";
    }

    @RequestMapping(value = "/quiz", method = RequestMethod.POST)
    public ModelAndView operationResult(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mv = new ModelAndView();
        String[] answers = new String[]{"b", "c", "b", "b", "b"};
        int total = 5;
        int score = 0;

        String[] choices = new String[5];
        String q1 = request.getParameter("q1");
        choices[0]=q1;
        String q2 = request.getParameter("q2");
        choices[1]=q2;
        String q3 = request.getParameter("q3");
        choices[2]=q3;
        String q4 = request.getParameter("q4");
        choices[3]=q4;
        String q5 = request.getParameter("q5");
        choices[4]=q5;

        for (int i = 0; i < total; i++) {
            if(answers[i].equals(choices[i])){
                score+=2;
            }
        }
        mv.setViewName("result");
        mv.addObject("result",score);
        scoreUser = score;
        return mv;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView insertNameInDB(HttpServletRequest request, HttpServletResponse response){
        String username = request.getParameter("username");
        UserDAO userDAO = new UserDAO();
        User newUser = new User(username,scoreUser);
        userDAO.createUser(newUser);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("succes");
        return mv;
    }
}
