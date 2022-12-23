package cf.eisp.spring_jsp_shop.controller;

import cf.eisp.spring_jsp_shop.service.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@AllArgsConstructor
public class ProductController {
    private ProductService productService;
    @GetMapping("/outer")
    public String outer(Model model) {
        productService.findByType(model,"outer");
        return "product";
    }

    @GetMapping("/top")
    public String top(Model model) {
        productService.findByType(model,"top");
        return "product";
    }

    @GetMapping("/bottom")
    public String bottom(Model model) {
        productService.findByType(model,"bottom");
        return "product";
    }
}
