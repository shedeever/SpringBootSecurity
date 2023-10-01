<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Портал Системных Администраторов</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>

<sec:authorize access="!isAuthenticated()">
<nav>
  <a href="/login">Войти</a>
  <a href="/registration">Зарегистрироваться</a>
</nav>
</sec:authorize>

<header>
  <div class="container">
    <h1>Портал Системных Администраторов</h1>
  </div>
</header>

<div class="container">
  <section>
    <h2>О нашем портале</h2>
    <p>
      Добро пожаловать на портал системных администраторов — ваш незаменимый инструментарий для управления конфигурациями сетевых устройств. На нашем портале предоставлены следующие возможности:
    </p>
    <ul>
      <li><strong>Сохранение Конфигураций:</strong> Быстро и безопасно сохраняйте настройки сетевых устройств для будущего использования или архивации.</li>
      <li><strong>Редактирование Конфигурации:</strong> Удобный интерфейс редактирования позволит вам быстро вносить изменения в сохраненные конфигурации.</li>
      <li><strong>Сравнение Конфигураций:</strong> Сравнивайте две или более конфигурации сетевых устройств, чтобы выявить различия и обеспечить корректность настроек.</li>
    </ul>
    <p>
      Наша команда постоянно работает над улучшением портала, добавлением новых функций и обеспечением максимальной безопасности ваших данных.
    </p>
  </section>
</div>
</body>
</html>
