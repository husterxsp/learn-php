{extends file="./layout.tpl"}
{block name="title"}登录{/block}
{block name="style"}
<style media="screen">
	.login {
		position: absolute;;
		width: 200px;
		margin: 100px auto;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
	}
	.login a {
		color: #fff;
		text-decoration: underline;
	}
</style>
{/block}
{block name='main'}
<div class="login">
	<form action="index.php?controller=admin&method=login" method="post">
		<input type="text" class="field" name="username" placeholder="用户名">
		<input type="text" class="field" name="password" placeholder="密码">
		<input type="submit" name="submit" value="登录">
		<a href="index.php?controller=admin&method=showRegister">去注册</a>
	</form>
</div>
{/block}
