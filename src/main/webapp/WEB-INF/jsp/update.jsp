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
<h2>Update Student</h2>

<form action="/save" method="post">

    <!-- IMPORTANT: hidden ID -->
    <input type="hidden" name="id" value="${student.id}"/>

    Name: <input type="text" name="name" value="${student.name}"/><br/>
    Email: <input type="text" name="email" value="${student.email}"/><br/>

    Courses:
    <select name="courseIds" multiple>
        <c:forEach var="c" items="${courses}">
            <option value="${c.id}"
                    <c:forEach var="sc" items="${student.courses}">
                        <c:if test="${sc.id == c.id}">selected</c:if>
                    </c:forEach>
            >
                    ${c.title}
            </option>
        </c:forEach>
    </select>
    <p><small>Hold Ctrl (Windows) / Cmd (Mac) to select or deselect multiple courses.</small></p>
    <br/>
    <button type="submit">Update</button>
    <br/>
    <label>
        <input type="checkbox" name="clearCourses"/>
        Remove all courses
    </label>
</form>
