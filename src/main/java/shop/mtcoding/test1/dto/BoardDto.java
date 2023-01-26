package shop.mtcoding.test1.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import shop.mtcoding.test1.util.DateUtil;

@Getter
@Setter
public class BoardDto {
    private int id;
    private int userId;
    private String content;
    private String title;
    private Timestamp createdAt;

    public String getCreatedAtToString() {
        return DateUtil.timeStampFormat(createdAt);
    }
}
