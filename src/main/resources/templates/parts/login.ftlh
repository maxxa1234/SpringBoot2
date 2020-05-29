<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1"> User Name : </label>
            <input type="text" class="form-control" id="exampleInputName" aria-describedby="nameHelp" placeholder="Enter name" name="username"/>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1"> Password: </label>
            <input type="password"  class="form-control" id="exampleInputPassword1" placeholder="Password" name="password"/>
            <small id="passwordHelp" class="form-text text-muted">We'll never share your password with anyone else.</small>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="form-row"></div>
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create <#else>Sign in</#if></button>
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
        </div>
    </form>
</#macro>

<#macro loguot>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-primary">Sign out</button>
    </form>
</#macro>