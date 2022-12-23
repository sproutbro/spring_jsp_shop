package cf.eisp.spring_jsp_shop.repository;

import cf.eisp.spring_jsp_shop.model.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductRepository {
    List<Product> findByType(String type);

    Product findByPno(int pno);
}
