package cf.eisp.spring_jsp_shop.config.auth;

import cf.eisp.spring_jsp_shop.model.Member;
import cf.eisp.spring_jsp_shop.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class PrincipalDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Member userEntity = userRepository.findById(username);
        return new PrincipalDetails(userEntity);
    }
}
