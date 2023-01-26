package shop.mtcoding.test1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.mtcoding.test1.model.User;
import shop.mtcoding.test1.model.UserRepository;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    public int 유저정보변경(int principalId, String password, String email) {

        // 아이디 존재 확인
        User user = userRepository.findById(principalId);
        if (user == null) {
            return -1;
        }

        // user_tb 비밀번호, 이메일 반영 (update)
        int res = userRepository.updateById(principalId, password, email);
        if (res != 1) {
            return -1;
        }

        return 1;

    }
}
