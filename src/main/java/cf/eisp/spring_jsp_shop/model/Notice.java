package cf.eisp.spring_jsp_shop.model;


import lombok.Data;

import java.sql.Timestamp;

@Data
public class Notice {
    private Integer nno;
    private String ntitle;
    private String ncontent;
    private Timestamp nrdate;
}
