package shop.mtcoding.test1.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.test1.dto.BoardAllDto;
import shop.mtcoding.test1.dto.BoardDetailDto;
import shop.mtcoding.test1.model.BoardContentRepository;
import shop.mtcoding.test1.model.BoardRepository;
import shop.mtcoding.test1.model.User;

@Controller
public class BoardController {

    @Autowired
    BoardRepository boardRepository;

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
            List<BoardAllDto> boardList = boardRepository.findByUserId(user.getId());
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
        BoardDetailDto boardDetail = boardContentRepository.findByUserId(id);
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

}
