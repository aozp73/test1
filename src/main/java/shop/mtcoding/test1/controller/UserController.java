package shop.mtcoding.test1.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.test1.model.User;
import shop.mtcoding.test1.model.UserRepository;

@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    HttpSession session;

    @GetMapping("/joinForm")
    public String joinForm() {
        return "user/joinForm";
    }

    @GetMapping("/loginForm")
    public String loginForm() {
        return "user/loginForm";
    }

    @PostMapping("/join")
    public String join(String username, String password, String email) {
        int res = userRepository.insert(username, password, email);
        if (res == 1) {
            return "redirect:/loginForm";
        } else {
            return "/joinForm";
        }
    }

    @PostMapping("/login")
    public String login(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);

        if (user == null) {
            return "redirect:/loginForm";
        } else {
            session.setAttribute("principal", user);
            return "redirect:/";
        }
    }

}
