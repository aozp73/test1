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
                    <form action="/board/insert" method="post">
                        <table border="1">
                            <tr>
                                <th>게시글</th>
                                <td>
                                    <textarea name="title" cols="100" rows="1" ></textarea>
                                </td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td>
                                    <textarea name="content" cols="100" rows="20"></textarea>
                                </td>
                            </tr>

                        </table>
                        <button type="submit">게시글 등록하기</button>
                </div>
            </div>
            </form>
    </div>


    <%@ include file="../layout/footer.jsp" %>