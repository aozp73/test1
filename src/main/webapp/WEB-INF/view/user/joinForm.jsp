<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


    <%@ include file="../layout/joinHeader.jsp" %>

        <form action="/join" method="post">
            <table border="1">
                <tr>
                    <th>유저네임</th>
                    <td><input type="text" name="username" placeholder="username"></td>
                </tr>
                <tr>
                    <th>패스워드</th>
                    <td><input type="password" name="password" placeholder="password"></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="email" name="email" placeholder="email"></td>
                </tr>
            </table>
            <button type="submit">회원가입완료</button>
        </form>


        <%@ include file="../layout/footer.jsp" %>