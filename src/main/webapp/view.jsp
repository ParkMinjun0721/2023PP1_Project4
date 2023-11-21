
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="crud.dao.BoardDAO, crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View</title>
    <!-- Adding Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<div class="container mt-5">
    <h1 class="text-center mb-4">View</h1>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title"><%=u.getTitle()%></h5><br>
            <h6 class="card-subtitle mb-2 text-muted">Category: <%=u.getCategory()%></h6><br>
            <p class="card-text"><%=u.getContent()%></p>
            <p class="card-text"><small class="text-muted">Written by <%=u.getWriter()%> </small></p>
            <a href="posts.jsp" class="card-link">View All Records</a>
            <a href="editform.jsp?id=<%=u.getSeq()%>" class="card-link">Edit</a>
        </div>
    </div>
</div>

<!-- Adding Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
