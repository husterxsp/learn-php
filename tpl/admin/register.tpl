{extends file="./layout.tpl"}
{block name="title"}注册{/block}
{block name="style"}
<style media="screen">
	.register {
		position: absolute;;
		width: 200px;
		margin: 100px auto;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
	}
    .register a {
		color: #fff;
		text-decoration: underline;
	}
</style>
{/block}
{block name='main'}
<div class="register">
	<form action="index.php?controller=admin&method=register" method="post">
		<input type="text" class="field" name="username" placeholder="用户名">
		<input type="text" class="field" name="password" placeholder="密码">
		<input type="submit" name="register" value="注册">
        <a href="index.php?controller=admin&method=login">返回登录</a>
	</form>
</div>
{/block}
