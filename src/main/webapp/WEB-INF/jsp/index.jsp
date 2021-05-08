<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
  <title>index</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">

</head>
<body>
<div class="tabs is-medium">
<ul>
 <li class="is-active"> <h3>${pageContext.request.userPrincipal.name}</h3></li>
  <sec:authorize access="!isAuthenticated()">
  <li><h1><a href="/login">  Войти</a></h1></li>
  <li> <h1><a href="/registration">Зарегистрироваться</a></h1></li>
  </sec:authorize>
  <sec:authorize access="isAuthenticated()">
  <li><h1><a href="/logout">Выйти</a></h1></li>
  </sec:authorize>
    <sec:authorize access="hasRole('ROLE_USER')">
  <li> <h1><a href="/news">Добавление записей (только пользователь)</a></h1></li>
    </sec:authorize>
    <sec:authorize access="hasRole('ROLE_ADMIN')">
  <li>  <h1><a href="/admin">Редактирование, добавление, удаление пользователей и записей  (только админ)</a></h1></li>
    </sec:authorize>
</ul>
<div>
</body>
</html>