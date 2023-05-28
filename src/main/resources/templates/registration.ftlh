<!DOCTYPE html>
<html>
<head>
    <title>STORE</title>
</head>
<body>
<h1>STORE</h1>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя пользователя: <input type="text" name="name"><br><br>
    Email: <input type="email" name="email"><br><br>
    Телефон: <input type="text" name="phoneNumber"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Зарегистрироваться"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
<a href="/login">Войти</a>
</body>
</html>