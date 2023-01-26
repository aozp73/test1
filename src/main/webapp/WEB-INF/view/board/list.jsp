<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <h1>게시글 목록 페이지</h1>
    <hr>
    <%@ include file="../layout/header.jsp" %>


        <table border="1">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성일</th>
            </tr>
            <c:forEach items="${boardList}" var="board">
                <tr>
                    <td>${board.id}</td>
                    <td>${board.title}</td>
                    <td>${board.createdAtToString}</td>
                </tr>
            </c:forEach>
        </table>
        <a href="">글쓰기</a>
        <br>




        <%@ include file="../layout/footer.jsp" %>