package shop.mtcoding.test1.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {
    private int id;
    private int username;
    private String password;
    private String email;
    private Timestamp createdAt;
}