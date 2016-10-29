{extends file="./layout.tpl"}
{block name="title"}首页{/block}
{block name="style"}
{/block}
{block name="main"}
{include file='admin/leftMenu.tpl'}
<div class="right">
	<div class="title">管理新闻</div>
	<table cellspacing="0">
		<thead>
			<tr>
				<th>ID</th>
				<th>标题</th>
				<th>作者</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		{if $data}
		{foreach $data as $value}
			<tr>
				<td>{$value.id}</td>
				<td>{$value.title}</td>
				<td>{$value.author}</td>
				<td>
					<input type="button" value="编辑" onclick="window.location.href='index.php?controller=admin&method=newsadd&id={$value.id}'">
					<input type="button" value="删除" onclick="window.location.href='index.php?controller=admin&method=newsdel&id={$value.id}'">
				</td>
			</tr>
		{/foreach}
		{else}
			<tr>
				<td colspan=4>
					暂无新闻
				</td>
			</tr>
		{/if}
		</tbody>
	</table>
</div>
{/block}
