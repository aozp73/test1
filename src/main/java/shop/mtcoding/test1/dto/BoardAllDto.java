package shop.mtcoding.test1.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import shop.mtcoding.test1.util.DateUtil;

@Getter
@Setter
public class BoardAllDto {
    private int id;
    private String title;
    private Timestamp createdAt;

    public String getCreatedAtToString() {
        return DateUtil.timeStampFormat(createdAt);
    }
}
