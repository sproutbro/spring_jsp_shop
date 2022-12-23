package cf.eisp.spring_jsp_shop.service;

import cf.eisp.spring_jsp_shop.model.Product;
import cf.eisp.spring_jsp_shop.repository.ProductRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
    private ProductRepository productRepository;

    public void findByType(Model model, String type) {
        List<Product> productList = productRepository.findByType(type);
        model.addAttribute("productList", productList);
    }

    @Override
    public void findByPno(Model model, String pno) {
        int intPno = Integer.parseInt(pno);
        Product product = productRepository.findByPno(intPno);
        model.addAttribute("product", product);
    }
}
