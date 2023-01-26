<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <header>
        <div class="header_font">
            <h1>회원수정 페이지</h1>
        </div>
        <hr>
    </header>

    <div class="content_layout">
        <%@ include file="../layout/nav.jsp" %>

            <div class="content">
                <div>
                    <form action="/update" method="post">
                        <table border="1">
                            <tr>
                                <th>유저네임</th>
                                <input type="hidden" name="userId" value="${principal.id}">
                                <td><input type="text" name="username" value="${principal.username}" readonly>
                                </td>
                            </tr>
                            <tr>
                                <th>패스워드</th>
                                <td><input type="password" name="password" value="${principal.password}"> </td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td><input type="email" name="email" value="${principal.email}"> </td>
                            </tr>
                        </table>
                        <button type="submit">회원수정완료</button>
                </div>
            </div>
            </form>
    </div>


    <%@ include file="../layout/footer.jsp" %>