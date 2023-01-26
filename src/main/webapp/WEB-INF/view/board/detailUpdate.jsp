<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <header>
        <div class="header_font">
            <h1>게시글 수정페이지</h1>
        </div>
        <hr>
    </header>

    <div class="content_layout">
        <%@ include file="../layout/nav.jsp" %>

            <div class="content">
                <div>
                    <form action="/board/update" method="post">
                        <table border="1">
                            <tr>
                                <th>게시글</th>

                                <td>
                                    <textarea name="title" cols="100" rows="1" readonly>${boardDetail.title}</textarea>
                                </td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td>
                                    <textarea name="content" cols="100" rows="20">${boardDetail.content}</textarea>
                                </td>
                            </tr>

                        </table>
                        <input type="hidden" name="detailId" value="${boardDetail.id}">
                        <button type="submit">게시글 수정하기</button>
                </div>
            </div>
            </form>
    </div>


    <%@ include file="../layout/footer.jsp" %>