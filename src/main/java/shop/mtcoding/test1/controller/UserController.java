package shop.mtcoding.test1.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.test1.model.User;
import shop.mtcoding.test1.model.UserRepository;
import shop.mtcoding.test1.service.UserService;

@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    HttpSession session;

    @Autowired
    UserService userService;

    @GetMapping("/joinForm")
    public String joinForm(HttpServletRequest request) {

        return "user/joinForm";
    }

    @GetMapping({ "/", "/loginForm" })
    public String loginForm(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        String username = "";

        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("remember")) {
                username = cookie.getValue();
            }
        }

        request.setAttribute("remember", username);

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
    public String login(String username, String password, String remember, HttpServletResponse response) {
        User user = userRepository.findByUsernameAndPassword(username, password);

        if (remember == null) {
            remember = "";
        }

        if (user == null) {
            return "redirect:/loginForm";

        } else {

            if (remember.equals("on")) {
                Cookie cookie = new Cookie("remember", username);
                response.addCookie(cookie);
            } else {
                Cookie cookie = new Cookie("remember", username);
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }

            session.setAttribute("principal", user);
            return "redirect:/board";
        }
    }

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
        return "redirect:/loginForm";
    }

    @GetMapping("/updateForm")
    public String updateForm() {
        return "user/updateForm";
    }

    @PostMapping("/update")
    public String update(int userId, String username, String password, String email) {
        // ??????
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/notfound";
        }

        // ?????? : ????????? Id??? ??????????????? Id??? ???????????? ??????
        if (principal.getId() != userId) {
            return "redirect:/notfound";
        }

        // ????????????
        int res = userService.??????????????????(principal.getId(), password, email);
        if (res == -1) {
            return "redirect:/notfound";
        }
        User user = userRepository.findById(userId);
        session.setAttribute("principal", user);

        return "redirect:/board";
    }

}
