<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../inc.jsp"></jsp:include>
<script type="text/javascript" charset="UTF-8">
	var editRow;
	var editType;/*add or edit or undefined*/
	var treegrid;
	var iconData;
	$(function() {

		iconData = [ {
			value : '',
			text : '默认'
		}, {
			value : 'icon-add',
			text : 'icon-add'
		}, {
			value : 'icon-edit',
			text : 'icon-edit'
		}, {
			value : 'icon-remove',
			text : 'icon-remove'
		}, {
			value : 'icon-save',
			text : 'icon-save'
		}, {
			value : 'icon-cut',
			text : 'icon-cut'
		}, {
			value : 'icon-ok',
			text : 'icon-ok'
		}, {
			value : 'icon-no',
			text : 'icon-no'
		}, {
			value : 'icon-cancel',
			text : 'icon-cancel'
		}, {
			value : 'icon-reload',
			text : 'icon-reload'
		}, {
			value : 'icon-search',
			text : 'icon-search'
		}, {
			value : 'icon-print',
			text : 'icon-print'
		}, {
			value : 'icon-help',
			text : 'icon-help'
		}, {
			value : 'icon-undo',
			text : 'icon-undo'
		}, {
			value : 'icon-redo',
			text : 'icon-redo'
		}, {
			value : 'icon-back',
			text : 'icon-back'
		}, {
			value : 'icon-sum',
			text : 'icon-sum'
		}, {
			value : 'icon-tip',
			text : 'icon-tip'
		} ];

		treegrid = $('#treegrid').treegrid({
			
			url : 'payAction!treegrid.action',
			toolbar : [ {
				text : '展开',
				iconCls : 'icon-redo',
				handler : function() {
					var node = treegrid.treegrid('getSelected');
					if (node) {
						treegrid.treegrid('expandAll', node.cid);
					} else {
						treegrid.treegrid('expandAll');
					}
				}
			}, '-', {
				text : '折叠',
				iconCls : 'icon-undo',
				handler : function() {
					var node = treegrid.treegrid('getSelected');
					if (node) {
						treegrid.treegrid('collapseAll', node.cid);
					} else {
						treegrid.treegrid('collapseAll');
					}
				}
			}, '-', {
				text : '刷新',
				iconCls : 'icon-reload',
				handler : function() {
					editRow = undefined;
					editType = undefined;
					treegrid.treegrid('reload');
				}
			}, '-', {
				text : '导出excel',
				iconCls : 'icon-add',
				handler : function() {
					append();
				}
			}],
			title : '',
			iconCls : 'icon-save',
			fit : true,
			fitColumns : false,
			nowrap : true,
			animate : false,
			border : false,
			idField : 'cid',
			treeField : 'cname',
			frozenColumns : [ [/*  {
				title : 'cid',
				field : 'cid',
				width : 50
			}, */ {
				field : 'cname',
				title : '项目名称',
				width : 400,
				editor : {
					type : 'validatebox',
					options : {
						required : true
					}
				},
				formatter : function(value) {
					if (value) {
						return sy.fs('<span title="{0}">{1}</span>', value, value);
					}
				}
			},{
				field : 'cbudget',
				title : '预算',
				align : 'right',
				width : 150,
				formatter : function(value) {
						return '￥'+value+'万';					
				}
			} ,{
				field : 'cmoney',
				title : '已到款',
				align : 'right',
				width : 150,
				formatter : function(value) {
					return '￥'+value+'万';
				}
			} ,{
				field : 'ccost',
				title : '支出',
				align : 'right',
				width : 150,
				formatter : function(value) {
					return '￥'+value+'万';
				}
			},{
				field : 'cbalance',
				title : '结余',
				align : 'right',
				width : 150,
				formatter : function(value) {
					return '￥'+value+'万';
				}
			} ,{
				field : 'cresponser',
				title : '负责人',
				width : 150,
				formatter : function(value) {
					if (value) {
						return sy.fs('<span title="{0}">{1}</span>', value, value);
					}
				}
			} ] ],				
			onContextMenu : function(e, row) {
				e.preventDefault();
				$(this).treegrid('unselectAll');
				$(this).treegrid('select', row.cid);
				$('#menu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			},
			onLoadSuccess : function(row, data) {
				/*var t = $(this);
				if (data) {
					$(data).each(function(index, d) {
						if (this.state == 'closed') {
							t.treegrid('expandAll');
						}
					});
				}*/
			},
			onExpand : function(row) {
				treegrid.treegrid('unselectAll');
			},
			onCollapse : function(row) {
				treegrid.treegrid('unselectAll');
			}
		});

	});

</script>
</head>
<body class="easyui-layout" fit="true">
	<div region="center" border="false" style="overflow: hidden;">
		<table id="treegrid"></table>
	</div>

	<div id="menu" class="easyui-menu" style="width:120px;display: none;">
		<div onclick="append();" iconCls="icon-add">增加</div>
		<div onclick="remove();" iconCls="icon-remove">删除</div>
		<div onclick="edit();" iconCls="icon-edit">编辑</div>
	</div>
</body>
</html>