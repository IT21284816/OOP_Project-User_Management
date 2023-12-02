<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
        
        <style>
        .edit-button {
            display: inline-block;
            padding: 8px 20px;
            margin: 5px;
            text-align: center;
            text-decoration: none;
            border: 1px solid #28a745; 
            background-color: #28a745; 
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .edit-button:hover {
            background-color: #1e7e34; 
        }

       
        .delete-button {
            display: inline-block;
            padding: 8px 20px;
            margin: 5px;
            text-align: center;
            text-decoration: none;
            border: 1px solid #dc3545; 
            background-color: #dc3545; 
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .delete-button:hover {
            background-color: #bd2130; 
        }
    </style>
        
</head>
<body>
    <jsp:include page="header.jsp" />
    <br><br><br>
    <div class="row">
        <div class="container">
            <h3 class="text-center">List of Users</h3>            
            <hr>
            <br>
            <div class="container text-left">
                <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New User</a>
            </div>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${listUser}">
                        <tr>
                            <td><c:out value="${user.id}" /></td>
                            <td><c:out value="${user.name}" /></td>
                            <td><c:out value="${user.email}" /></td>
                            <td><c:out value="${user.phoneNumber}" /></td>
                            <td>
                               <a href="edit?id=<c:out value='${user.id}' />" class="edit-button">
    								<i class="fas fa-edit"></i> Edit</a>
							   <a href="delete?id=<c:out value='${user.id}' />" class="delete-button">
  									<i class="fas fa-trash"></i> Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
