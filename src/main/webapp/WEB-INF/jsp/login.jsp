<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Вход на Портал Системных Администраторов</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
</head>

<body>

<div class="login-container">
  <h2>Вход на портал</h2>
  <form action="/login" method="post">
    <input class="login-input" type="text" name="username" placeholder="Имя пользователя" required>
    <input class="login-input" type="password" name="password" placeholder="Пароль" required>
    <button class="login-button" type="submit">Войти</button>
    <button class="register-button" type="button" onclick="location.href='/registration'">Зарегистрироваться</button>
  </form>
</div>

</body>
</html>
