<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <header>
        <div class="header_font">
            <h1>회원가입 페이지</h1>
        </div>
        <hr>
    </header>

    <div class="content_layout">
        <%@ include file="../layout/nav.jsp" %>

            <form action="/join" method="post">
                <div class="content">
                    <div>
                        <table border="1">
                            <tr>
                                <th>유저네임</th>
                                <td><input type="text" name="username" placeholder="Enter username"></td>
                            </tr>
                            <tr>
                                <th>패스워드</th>
                                <td><input type="password" name="password" placeholder="Enter password"></td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td><input type="email" name="email" placeholder="Enter email"></td>
                            </tr>
                        </table>
                        <button type="submit">회원가입완료</button>
                    </div>
                </div>
            </form>
    </div>



    <%@ include file="../layout/footer.jsp" %>