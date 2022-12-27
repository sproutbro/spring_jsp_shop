package cf.eisp.spring_jsp_shop.service;

import cf.eisp.spring_jsp_shop.model.Notice;

import java.util.List;

public interface NoticeService {
    List<Notice> findAll();

    Notice find_id(Integer nno);
}
