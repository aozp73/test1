package shop.mtcoding.test1.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDetailDto {
    private int id;
    private int userId;
    private String content;
    private String title;
    private Timestamp createdAt;
}
