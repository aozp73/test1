package shop.mtcoding.test1.controller;

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
    public String joinForm() {
        return "user/joinForm";
    }

    @GetMapping({ "/", "/loginForm" })
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
        // 인증
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/notfound";
        }

        // 권한 : 접속중 Id와 변경하려는 Id가 동일한지 확인
        if (principal.getId() != userId) {
            return "redirect:/notfound";
        }

        // 트랜잭션
        int res = userService.유저정보변경(principal.getId(), password, email);
        if (res == -1) {
            return "redirect:/notfound";
        }
        User user = userRepository.findById(userId);
        session.setAttribute("principal", user);

        return "redirect:/board";
    }

}
