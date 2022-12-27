package cf.eisp.spring_jsp_shop.repository;

import cf.eisp.spring_jsp_shop.model.Notice;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeRepository {
    List<Notice> findAll();

    Notice find_id(Integer nno);
}
