{extends file="./layout.tpl"}
{block name="title"}首页{/block}
{block name="style"}
{/block}
{block name="main"}
	{include file='admin/leftMenu.tpl'}
	<div class="right">
		<p>本站共有新闻{$newsnum}篇</p>
	</div>
{/block}
{block name="js"}
{/block}
