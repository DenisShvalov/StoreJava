<!DOCTYPE html>
<html>
<head>
    <title>STORE</title>
</head>
<body>
<h1>STORE</h1><hr>
<h4>Панель администратора</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Состояние</th>
        <th>Роли</th>
        <th>Бан</th>
        <th>Права доступа</th>
        <th>Посмотреть подробную информацию</th>
    </tr>
    <#list users as user>
         <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>
                    Рабочее
                <#else>
                    Заблокирован
                </#if>
            </th>
            <th>
            <#list user.roles as role>${role}<#sep>, </#list>
            </th>
            <th><form action="/admin/user/ban/${user.id}" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="Изменить">
            </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Изменить</a></th>
            <th><a href="/user/${user.id}">Подробная информация</a></th>
        </tr>
    <#else>
        <h3>Пользователей нет</h3>
    </#list>
</table>
</body>
</html>