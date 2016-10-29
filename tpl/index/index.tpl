<div>关于：{$about}</div>
<div><a href="index.php?controller=admin&method=index">管理员登录</a></div>
<hr />
{if $data}
    <div>列表：</div><br/>
    {foreach $data as $news}
    <div>标题：{$news.title}</div>
    <div>作者：{$news.author}</div>
    <div>内容：{$news.content}</div>
    <div>时间：{$news.dateline}</div>
    <div><a href="index.php?controller=index&method=showNews&id={$news.id}">查看详情</a></div>
    <br/>
    {/foreach}
{else}
    暂无数据
{/if}
<hr />
