package cf.eisp.spring_jsp_shop.controller;

import cf.eisp.spring_jsp_shop.model.Notice;
import cf.eisp.spring_jsp_shop.service.NoticeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@AllArgsConstructor
public class NoticeController {

    NoticeService noticeService;

    @GetMapping("/notice")
    public String notice(Model model) {
        List<Notice> noticeList = noticeService.findAll();
        model.addAttribute("noticeList", noticeList);
        model.addAttribute("name", "이정균");
        return "notice";
    }

    @GetMapping("/notice2")
    public String notice2(Model model) {
        Integer nno = 1;
        Notice notice = noticeService.find_id(nno);
        model.addAttribute("nno", notice);
        return "notice";
    }
}
