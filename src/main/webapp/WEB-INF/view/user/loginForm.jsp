<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <header>
        <div class="header_font">
            <h1>로그인 페이지</h1>
        </div>
        <hr>
    </header>
    <div class="content_layout">
        <%@ include file="../layout/nav.jsp" %>


            <form action="/login" method="post">
                <div class="content">
                    <div>
                        <table border="1">
                            <tr>
                                <th>유저네임</th>
                                <td><input type="text" name="username" value="${remember}" placeholder="Enter username">
                                </td>
                            </tr>
                            <tr>
                                <th>패스워드</th>
                                <td><input type="password" name="password" placeholder="Enter password"></td>
                            </tr>
                        </table>
                        <div class=content_loginbox>
                            <div class="content_loginbox1">
                                아이디 기억 <input type="checkbox" name="remember">
                            </div>
                            <div class="content_loginbox2">
                                <button type="submit">로그인</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
    </div>


    <%@ include file="../layout/footer.jsp" %>