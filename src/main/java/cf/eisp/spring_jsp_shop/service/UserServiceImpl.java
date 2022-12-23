package cf.eisp.spring_jsp_shop.service;

import cf.eisp.spring_jsp_shop.model.Member;
import cf.eisp.spring_jsp_shop.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    private BCryptPasswordEncoder bCryptPasswordEncoder;
    private UserRepository userRepository;

    @Override
    public Boolean save(Model model, Member member) {
//        ID 중복 검사
        Member findMember = userRepository.findById(member.getMid());
        if (findMember != null) {
            model.addAttribute("msg", "가입된 아이디");
            return false;
        }

//        Password encoding
        String encode = bCryptPasswordEncoder.encode(member.getMpw());
        member.setMpw(encode);

//        DB Error
        Integer joinResult = userRepository.save(member);
        if (joinResult != 1) {
            model.addAttribute("msg", "DB Error");
            return false;
        }

//        Join success
        return true;
    }
}
