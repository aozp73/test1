package shop.mtcoding.test1.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import shop.mtcoding.test1.dto.BoardAllDto;
import shop.mtcoding.test1.model.BoardRepository;
import shop.mtcoding.test1.model.User;

@Controller
public class BoardController {

    @Autowired
    BoardRepository boardRepository;

    @Autowired
    HttpSession session;

    @GetMapping("/board")
    public String boardList(Model model) {
        User user = (User) session.getAttribute("principal");
        if (user == null) {
            return "redirect:/";
        } else {
            List<BoardAllDto> boardList = boardRepository.findByUserId(user.getId());
            model.addAttribute("boardList", boardList);
            return "board/list";
        }

    }
}
