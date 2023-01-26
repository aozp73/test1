<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <header>
        <div class="header_font">
            <h1>게시글 목록 페이지</h1>
        </div>
    </header>
    <hr>

    <div class="content_layout">
        <%@ include file="../layout/nav.jsp" %>


            <div class="content">
                <div>
                    <table border="1">
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                        </tr>
                        <c:forEach items="${boardList}" var="board">
                            <tr>
                                <td>${board.id}</td>
                                <td><a href="/brard/${board.id}">${board.title}</a> </td>
                                <td>${board.createdAtToString}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <a href="/board/insertForm">글쓰기</a>

                </div>
            </div>
    </div>



    <%@ include file="../layout/footer.jsp" %>