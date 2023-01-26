package shop.mtcoding.test1.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.test1.dto.BoardDto;
import shop.mtcoding.test1.model.BoardContentRepository;
import shop.mtcoding.test1.model.User;

@Controller
public class BoardController {

    @Autowired
    HttpSession session;

    @Autowired
    BoardContentRepository boardContentRepository;

    @GetMapping("/board")
    public String boardList(Model model) {
        User user = (User) session.getAttribute("principal");
        if (user == null) {
            return "redirect:/";
        } else {
            List<BoardDto> boardList = boardContentRepository.findAllByUserId(user.getId());
            model.addAttribute("boardList", boardList);
            return "board/list";
        }
    }

    @GetMapping("/brard/{id}")
    public String detail(@PathVariable int id, Model model) {
        User user = (User) session.getAttribute("principal");
        if (user == null) {
            return "redirect:/";
        }
        BoardDto boardDetail = boardContentRepository.findByUserId(id);
        model.addAttribute("boardDetail", boardDetail);
        return "board/detail";
    }

    @PostMapping("/board/update")
    public String update(int detailId, String content) {
        int res = boardContentRepository.updateById(detailId, content);
        if (res != 1) {
            return "error/notfound";
        }

        return "redirect:/board";
    }

    @GetMapping("/board/insertForm")
    public String insertForm() {
        return "board/insertForm";
    }

    @PostMapping("/board/insert")
    public String insert(String title, String content) {
        User user = (User) session.getAttribute("principal");
        if (user == null) {
            return "redirect:/";
        } else {
            boardContentRepository.insert(user.getId(), title, content);
            return "redirect:/board";
        }
    }

}
