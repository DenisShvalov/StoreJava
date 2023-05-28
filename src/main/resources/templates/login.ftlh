<!DOCTYPE html>
<html>
<head>
    <title>STORE</title>
</head>
<body>
<h1>STORE</h1>
<h4>Авторизация</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Войти"/>
</form>
<a href="/registration">Регистрация</a>
</body>
</html>