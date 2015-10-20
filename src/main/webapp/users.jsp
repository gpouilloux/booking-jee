<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h1>Users list <button type="button" class="btn btn-primary btn-circle btn-lg create"><i class="glyphicon glyphicon-plus"></i></button>
</h1>
<table id="table-users" class="table table-striped table-hover table-condensed">
    <tr>
        <td>Id</td>
        <td>Login</td>
        <td>Password</td>
        <td>Lastname</td>
        <td>Firstname</td>
        <td>Mail address</td>
        <td>Phone number</td>
        <td>Admin</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="user" items="${requestScope.users}">
        <tr>
            <td class="id">${user.id}</td>
            <td>${user.login}</td>
            <td>${user.password}</td>
            <td>${user.lastname}</td>
            <td>${user.firstname}</td>
            <td>${user.mailAddress}</td>
            <td>${user.phoneNumber}</td>
            <td>${user.admin}</td>
            <td><a class="edit" href="#"><i class="glyphicon glyphicon-pencil"></i></a></td>
            <td><a class="delete" href="#"><i class="glyphicon glyphicon-trash"></i></a></td>
        </tr>
    </c:forEach>
</table>
