<!DOCTYPE html>
<html>
<head>
    <title>STORE</title>
</head>
<body>
<h1>STORE</h1>
<h3>Подробная информация о пользователе ${user.name}</h3>
<b>Номер телефона: ${user.phoneNumber}</b><br>
<b>Email: ${user.email}</b>
<hr>
<h4>Товары продавца ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб.| <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>