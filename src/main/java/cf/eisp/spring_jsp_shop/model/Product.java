package cf.eisp.spring_jsp_shop.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Product {
    private Integer pno;
    private String pname;
    private String ptype;
    private Integer pprice;
    private String pimg;
    private String pdetail;
    private Timestamp prdate;
}
