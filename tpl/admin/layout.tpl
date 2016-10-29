<!doctype html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>{block name="title"}后台管理模板{/block}</title>
	<link rel="stylesheet" href="static/css/admin.css">
	{block name="style"}{/block}
</head>
<body>
<div class="container">
	<div class="header">
		<a href="index.php?controller=admin&method=index" class="logo">后台管理面板</a>
	</div>
	<div class="content">
		{block name="main"}{/block}
	</div>
</div>
{block name="js"}{/block}
</body>
</html>
