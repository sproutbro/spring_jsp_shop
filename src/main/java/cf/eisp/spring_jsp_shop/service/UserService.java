package cf.eisp.spring_jsp_shop.service;

import cf.eisp.spring_jsp_shop.model.Member;
import org.springframework.ui.Model;

public interface UserService {
    Boolean save(Model model, Member member);
}
