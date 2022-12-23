package cf.eisp.spring_jsp_shop.repository;

import cf.eisp.spring_jsp_shop.model.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRepository {

    Member findById(String mid);

    Integer save(Member member);
}
