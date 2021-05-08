<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>registration</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">
</head>

<body>
<div class="column is-half is-offset-one-quarter">
  <form:form method="POST" modelAttribute="userForm" class="box" >
    <h1>Регистрация</h1>
    <div>
      <form:input type="text" path="username" placeholder="Username"
                  autofocus="true" class="input is-medium" ></form:input>
      <form:errors path="username"></form:errors>
        ${usernameError}
    </div>
    <div>
      <form:input type="password" path="password" placeholder="Password" class="input is-medium"></form:input>
    </div>
    <div>
      <form:input type="password" path="passwordConfirm"
                  placeholder="Confirm your password" class="input is-medium"></form:input>
      <form:errors path="password"></form:errors>
        ${passwordError}
    </div>
    <div class="column is-half">
    <button type="submit" class="button is-primary is-outlined">Зарегистрироваться</button>
      <a href="/" class="button is-outlined">Главная</a>
    </div>
  </form:form>
</div>
</body>
</html>