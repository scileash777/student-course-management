# Student Course Management System

This is a Spring Boot web application developed to manage Students and Courses.
The project demonstrates Create, Read, and Update operations along with a Many-to-Many relationship between entities.

## Technologies Used

* Spring Boot
* MySQL
* JSP, JSTL, Expression Language (EL)
* JPA / Hibernate
* Maven

## Features

* Add students with multiple courses
* View students along with their courses
* Update student details and modify course selection
* Many-to-Many relationship using a join table

## Project Structure

* Controller Layer → Handles HTTP requests
* Service Layer → Business logic
* Repository Layer → Database interaction
* View Layer → JSP pages

## How to Run

1. Clone the repository
2. Open in IntelliJ or any IDE
3. Configure MySQL database in `application.properties`
4. Run the main Spring Boot application
5. Open browser at: `http://localhost:8080`

## Database

* Tables: `student`, `course`, `student_course`
* Data populated using JPA and application

## Testing

* JUnit used for repository and service layer testing

## Author

Sachin Yadav
