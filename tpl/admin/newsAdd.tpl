{extends file="./layout.tpl"}
{block name="title"}首页{/block}
{block name="style"}
{/block}
{block name="main"}
{include file='admin/leftMenu.tpl'}
<div class="right">
	<form class="form" method="post" action="index.php?controller=admin&method=newsadd">
		<div class="title">发表新文章</div>
		<input type="text" name="title" value="{$data.title|default:''}" placeholder="标题">
		<textarea rows="12" name="content" placeholder="内容">{$data.content|default:''}</textarea>
		<input type="text" name="author" placeholder="作者" value="{$data.author|default:''}">
		<input type="text" name="source" placeholder="出处" value="{$data.source|default:''}">
		<input type="hidden" name="id" value="{$data.id|default:''}">
		<input type="submit" name="submit" value="发布" class="alt_btn">
	</form>
</div>
{/block}
