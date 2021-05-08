<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>login</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">

</head>

<body>
<sec:authorize access="isAuthenticated()">
  <% response.sendRedirect("/"); %>
</sec:authorize>
<div class="column is-half is-offset-one-quarter">
  <form method="POST" action="/login" class="box">
    <h2>Вход в систему</h2>
    <div>
      <input name="username" type="text" placeholder="Username"
             autofocus="true"  class="input is-medium"/>
      <input name="password" type="password" placeholder="Password"  class="input is-medium"/>
      <div class="column is-half">
      <button type="submit" class="button is-primary is-outlined">Log In</button>
      <a href="/registration" class="button is-info is-outlined">Зарегистрироваться</a>
      </div>
    </div>
  </form>
</div>

</body>
</html>
