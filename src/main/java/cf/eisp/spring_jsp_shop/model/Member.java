package cf.eisp.spring_jsp_shop.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Member {
    private String mid;
    private String mpw;
    private String mname;
    private String mpost;
    private String madd;
    private String madd2;
    private String mphone;
    private String memail;
    private Timestamp mrdate;
}
