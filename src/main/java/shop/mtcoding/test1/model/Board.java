package shop.mtcoding.test1.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Board {
    private int id;
    private int userId;
    private Timestamp createdAt;
}
