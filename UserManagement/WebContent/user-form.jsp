<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
        
    <script>
        function validateForm() {
            var name = document.getElementById("name").value;
            var email = document.getElementById("email").value;
            var phoneNumber = document.getElementById("phoneNumber").value;
            
            if (name.trim() === '' || email.trim() === '' || phoneNumber.trim() === '') {
                alert("All fields are required. Please fill them in.");
                return false;
            }
            alert("New User Added SuccessFully");
            return true; 
        }
    </script>
</head>
<body style="background-color:#fff;">
    <jsp:include page="header.jsp" />
    <br><br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <c:if test="${user != null}">
                    <form id="userForm" action="update" method="post" onsubmit="return validateForm()">
                </c:if>
                <c:if test="${user == null}">
                    <form id="userForm" action="insert" method="post" onsubmit="return validateForm()">
                </c:if>

                <caption>
                    <h2>
                        <c:if test="${user != null}">
                            Edit User
                        </c:if>
                        <c:if test="${user == null}">
                            Add New User
                        </c:if>
                    </h2>
                </caption>

                <c:if test="${user != null}">
                    <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                </c:if>

                <fieldset class="form-group">
                    <label>User Name</label>
                    <input type="text" id="name" value="<c:out value='${user.name}' />" class="form-control" name="name">
                </fieldset>

                <fieldset class="form-group">
                    <label>User Email</label>
                    <input type="email" id="email" value="<c:out value='${user.email}' />" class="form-control" name="email">
                </fieldset>

                <fieldset class="form-group">
                    <label>User Phone Number</label>
                    <input type="text" id="phoneNumber" value="<c:out value='${user.phoneNumber}' />" class="form-control" name="phoneNumber">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
