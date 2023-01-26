<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <header>
        <div class="header_font">
            <h1>게시글 상세페이지</h1>
        </div>
        <hr>
    </header>

    <div class="content_layout">
        <%@ include file="../layout/nav.jsp" %>

            <div class="content">
                <div>
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
                                <textarea name="content" cols="100" rows="20" readonly>${boardDetail.content}</textarea>
                            </td>
                        </tr>


                        <!-- <form action="" method="post"> -->
                        <tr>
                            <th>댓글</th>
                            <td>
                                <textarea name="commentContent" cols="100" rows="3"></textarea>
                            </td>
                        </tr>
                    </table>
                    <button type="submit">댓글작성</button>
                    <!-- </form> -->

                </div>

            </div>
            </form>
    </div>


    <%@ include file="../layout/footer.jsp" %>