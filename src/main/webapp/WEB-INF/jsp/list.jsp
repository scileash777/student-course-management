<style>
    body {
        font-family: Arial;
        margin: 20px;
    }

    h2 {
        color: #2c3e50;
    }

    table {
        border-collapse: collapse;
        width: 60%;
    }

    td, th {
        padding: 10px;
        border: 1px solid #ccc;
    }

    button {
        padding: 5px 10px;
        background-color: #3498db;
        color: white;
        border: none;
    }

    a {
        text-decoration: none;
        color: blue;
    }
</style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2>Students List</h2>

<a href="/add">Add Student</a>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Courses</th>
        <th>Action</th>
    </tr>

    <c:forEach var="s" items="${students}">
        <tr>
            <td>${s.name}</td>
            <td>${s.email}</td>
            <td>
                <c:forEach var="c" items="${s.courses}">
                    ${c.title},
                </c:forEach>
            </td>
            <td>
                <a href="/edit/${s.id}">Edit</a>
            </td>
        </tr>
    </c:forEach>

</table>
