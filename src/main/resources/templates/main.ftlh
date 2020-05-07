<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>
        <@l.loguot />
        <span><a href="/user">User List</a></span>
    </div>
    <div>
        <form method="post" action="/main">
            <input type="text" name="text" placeholder="ВВедите сообщение"/>
            <input type="text" name="tag" placeholder="Тэг"/>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Добавить</button>
        </form>
        Список сообщений
    </div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Найти</button>
    </form>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>Сообщение: ${message.text}</span>
        <i>Тєг: ${message.tag}</i>
        <storng>Автор: ${message.authorName}</storng>
    </div>
    <#else>
        No message
    </#list>
</@c.page>