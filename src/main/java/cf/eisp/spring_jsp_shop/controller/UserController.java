package cf.eisp.spring_jsp_shop.controller;

import cf.eisp.spring_jsp_shop.model.Member;
import cf.eisp.spring_jsp_shop.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@AllArgsConstructor
public class UserController {

    private UserService userService;

    @GetMapping("/join")
    public String join() {
        return "join";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/join")
    public String joinAction(Member member, Model model) {
        Boolean result = userService.save(model, member);
        if (result) {
            return "login";
        }
        return "join";
    }
}
