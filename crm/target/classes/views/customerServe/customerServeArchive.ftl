<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>服务归档</title>
	<#include "../common.ftl">
</head>
<body class="childrenBody">

<form class="layui-form" >
	<blockquote class="layui-elem-quote quoteBox">
		<form class="layui-form">
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" name="customer" class="layui-input searchVal" placeholder="客户名" />
				</div>
				<div class="layui-input-inline">
					<select name="serveType" id="serveType"></select>
				</div>

				<a class="layui-btn search_btn" data-type="reload"><i class="layui-icon">&#xe615;</i> 搜索</a>
			</div>
		</form>
	</blockquote>
	<table id="customerServeList" class="layui-table" lay-filter="customerServe"></table>

</form>

<script type="text/javascript" src="js/customerServe/customerServeArchive.js"></script>

</body>
</html>