<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Конфигурации Сетевых Устройств</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/profile.css">
</head>
<body>
<div class="sidebar">
    <div class="user-menu">
        <span>${pageContext.request.userPrincipal.name}</span>
        <div class="user-dropdown">
            <sec:authorize access="isAuthenticated()">
                <a href="/logout">Выйти</a>
            </sec:authorize>
        </div>
    </div>
    <div class="menu-item">Конфигурации</div>
    <!-- Добавьте другие пункты меню, используя .menu-item -->
</div>
<div class="main-content">
    <h2>Конфигурации Сетевых Устройств</h2>
    <button class="btn-add-config">+</button>
    <table>
        <thead>
        <tr>
            <th>Название</th>
            <th>Модель</th>
            <th>Группа</th>
            <th>Последнее обновление</th>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Конфигурация 1</td>
            <td>Модель A</td>
            <td>Группа 1</td>
            <td>01.10.2023</td>
            <td class="config-actions">
                <span>Сохранить</span>
                <span>Редактировать</span>
                <span>Обновить</span>
            </td>
        </tr>
        <tr>
            <td>Конфигурация 2</td>
            <td>Модель A</td>
            <td>Группа 5</td>
            <td>07.10.2023</td>
            <td class="config-actions">
                <span>Сохранить</span>
                <span>Редактировать</span>
                <span>Обновить</span>
            </td>
        </tr>
        </tbody>
    </table>
</div>


<script src="${pageContext.request.contextPath}/resources/js/profile.js" type="text/javascript"></script>
</body>
</html>