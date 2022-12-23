package cf.eisp.spring_jsp_shop.service;

import org.springframework.ui.Model;

public interface ProductService {
    void findByType(Model model, String type);

    void findByPno(Model model, String pno);
}
