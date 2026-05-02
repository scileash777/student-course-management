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
<h2>Add Student</h2>

<form action="/save" method="post">
    Name: <input type="text" name="name"/><br/>
    Email: <input type="text" name="email"/><br/>

    Courses:
    <select name="courseIds" multiple>
        <c:forEach var="c" items="${courses}">
            <option value="${c.id}">${c.title}</option>
        </c:forEach>
    </select><br/>

    <button type="submit">Save</button>
</form>
