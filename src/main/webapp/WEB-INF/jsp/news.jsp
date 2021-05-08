<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>user</title>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue-resource@1.5.1"></script>
    <script src="https://github.com/vuejs/vue-devtools.git"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">

</head>
<body>
<div class="column is-half is-offset-one-quarter">
<div class="box" >
    <h2> добавление новых записей для залогинившихся пользователей.</h2>
    <div id="app"></div>
    <script src="/js/user.js"></script>
    <a href="/" class="button is-outlined" style=" top: 10px">Главная</a>
</div>
</div>
</body>
</html>