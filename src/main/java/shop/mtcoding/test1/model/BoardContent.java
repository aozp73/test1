package shop.mtcoding.test1.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardContent {
    private int id;
    private int boardId;
    private int userId;
    private String content;
}
