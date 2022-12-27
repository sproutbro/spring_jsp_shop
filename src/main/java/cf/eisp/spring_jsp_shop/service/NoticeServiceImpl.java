package cf.eisp.spring_jsp_shop.service;

import cf.eisp.spring_jsp_shop.model.Notice;
import cf.eisp.spring_jsp_shop.repository.NoticeRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

    NoticeRepository noticeRepository;

    @Override
    public List<Notice> findAll() {
        return noticeRepository.findAll();
    }

    @Override
    public Notice find_id(Integer nno) {
        return noticeRepository.find_id(nno);
    }

}
