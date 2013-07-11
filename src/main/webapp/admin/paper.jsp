<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../inc.jsp"></jsp:include>
<script type="text/javascript" charset="utf-8">
	var datagrid;
	var paperAddDialog;
	var paperAddForm;
	var paperEditDialog;
	var paperEditForm;
	var cdescEdit;
	var cdescAdd;
	var showCdescDialog;
	$(function() {
	    datagrid = $('#datagrid').datagrid({
			url : 'paperAction!datagrid.action',
			title : '论文列表',
			iconCls : 'icon-save',
			striped : true,
			pagination : true,
			pagePosition : 'bottom',
			pageSize : 10,
			pageList : [ 10, 20, 30, 40 ],
			fit : true,
			fitColumns : false,
			nowrap : false,
			border : false,
			idField : 'cid',
			sortName : 'cname',
			sortOrder : 'desc',
			frozenColumns : [ [ 
			{
				title : '编号',
				field : 'cid',
				width : 150,
				checkbox : true
			}, {
				title : '论文名称',
				field : 'cname',
				width : 200,
				sortable : true
			}] ],
			columns : [ [ 
			{
				title : '中文关键词',
				field : 'cckeyword',
				width : 200,
				sortable : true
			} , {
				title : '英文关键词',
				field : 'cekeyword',
				width : 200,
				sortable : true
			} ,{
				title : '摘要',
				field : 'csummary',
				formatter : function(value, rowData, rowIndex) {
					return '<span class="icon-search" style="display:inline-block;vertical-align:middle;width:16px;height:16px;"></span><a href="javascript:void(0);" onclick="showCdesc(' + rowIndex + ');">查看摘要</a>';
				},
				width : 300
			} ,{
				title : '语种',
				field : 'clanguage',
				width : 100,
				sortable : true
			},{
				title : '第一作者',
				field : 'cfcontactid',
				width : 150
			},{
				title : '通讯作者',
				field : 'cccontactid',
				width : 150,
				sortable : true
			}  , {
				title : '期卷名称',
				field : 'cperiodical',
				width : 150,
				sortable : true
			}, {
				title : '卷期',
				field : 'cissue',
				width : 150,
				sortable : true
			} , {
				title : '论文发表状态',
				field : 'cstate',
				width : 150,
				sortable : true
			}, {
				title : '论文发表时间',
				field : 'cpublishtime',
				width : 150
			},{
				title : '引文索引类型',
				field : 'cclassify',
				width : 150,
				sortable : true
			}  , {
				title : '引文索引号',
				field : 'cinde',
				width : 150,
				sortable : true
			}, {
				title : '数据录入人',
				field : 'ctypeman',
				width : 150,
				sortable : true
			} , {
				title : '数据录入日期',
				field : 'ctypetime',
				width : 150,
				sortable : true
			}] ],
			toolbar : [ {
				text : '增加',
				iconCls : 'icon-add',
				handler : function() {
					add();
				}
			}, '-', {
				text : '删除',
				iconCls : 'icon-remove',
				handler : function() {
					del();
				}
			}, '-', {
				text : '修改',
				iconCls : 'icon-edit',
				handler : function() {
					edit();
				}
			}, '-' ],
			onRowContextMenu : function(e, rowIndex, rowData) {
				e.preventDefault();
				$(this).datagrid('unselectAll');
				$(this).datagrid('selectRow', rowIndex);
				$('#menu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			}
		});

		function _search() {
			datagrid.datagrid('load', sy.serializeObject(searchForm));
		}
		function cleanSearch() {
			datagrid.datagrid('load', {});
			searchForm.find('input').val('');
		}
		
		paperAddForm = $('#paperAddForm').form({
			url : 'paperAction!add.action',
			success : function(data) {
				var json = $.parseJSON(data);
				if (json && json.success) {
					$.messager.show({
						title : '成功',
						msg : json.msg
					});
					datagrid.datagrid('reload');
					paperAddDialog.dialog('close');
				} else {
					$.messager.show({
						title : '失败',
						msg : json.msg
					});
				}
			}
		});

		paperAddDialog = $('#paperAddDialog').show().dialog({
			title : '添加论文信息',
			modal : true,
			closed : true,
			maximizable : true,
			buttons : [ {
				text : '添加',
				handler : function() {
					paperAddForm.submit();
				}
			}]
		});

		paperEditForm = $('#paperEditForm').form({
			url : 'paperAction!edit.action',
			success : function(data) {
				var json = $.parseJSON(data);
				if (json && json.success) {
					$.messager.show({
						title : '成功',
						msg : json.msg
					});
					datagrid.datagrid('reload');
					paperEditDialog.dialog('close');
				} else {
					$.messager.show({
						title : '失败',
						msg : json.msg
					});
				}
			}
		});

		paperEditDialog = $('#paperEditDialog').show().dialog({
			title : '编辑论文信息',
			modal : true,
			closed : true,
			maximizable : true,
			buttons : [ {
				text : '编辑',
				handler : function() {
					paperEditForm.submit();
				}
			} ]
		});

		cdescAdd = $('#cdescAdd').xheditor({
			tools : 'mini',
			html5Upload : true,
			upMultiple : 4,
			upLinkUrl : 'paperAction!upload.action',
			upLinkExt : 'zip,rar,txt,doc,docx,xls,xlsx',
			upImgUrl : 'paperAction!upload.action',
			upImgExt : 'jpg,jpeg,gif,png'
		});
		
		cdescEdit = $('#cdescEdit').xheditor({
			tools : 'mini',
			html5Upload : true,
			upMultiple : 4,
			upLinkUrl : 'paperAction!upload.action',
			upLinkExt : 'zip,rar,txt,doc,docx,xls,xlsx',
			upImgUrl : 'paperAction!upload.action',
			upImgExt : 'jpg,jpeg,gif,png'
		});

		showCdescDialog = $('#showCdescDialog').show().dialog({
			title : '摘要',
			modal : true,
			closed : true,
			maximizable : true
		});

	});

	function add() {
		paperAddForm.find('input,textarea').val('');
		$('div.validatebox-tip').remove();
		paperAddDialog.dialog('open');
	}
	function del() {
		var rows = datagrid.datagrid('getSelections');
		var ids = [];
		if (rows.length > 0) {
			$.messager.confirm('请确认', '您要删除当前所选项目？', function(r) {
				if (r) {
					for ( var i = 0; i < rows.length; i++) {
						ids.push(rows[i].cid);
					}
					$.ajax({
						url : 'paperAction!delete.action',
						data : {
							ids : ids.join(',')
						},
						dataType : 'json',
						success : function(response) {
							datagrid.datagrid('load');
							datagrid.datagrid('unselectAll');
							$.messager.show({
								title : '提示',
								msg : '删除成功！'
							});
						}
					});
				}
			});
		} else {
			$.messager.alert('提示', '请选择要删除的记录！', 'error');
		}
	}
	function edit() {
		var rows = datagrid.datagrid('getSelections');
		if (rows.length == 1) {
			$.messager.progress({
				text : '数据加载中....',
				interval : 100
			});
			$.ajax({
				url : 'paperAction!showDesc.action',
				data : {
					cid : rows[0].cid
				},
				dataType : 'json',
				cache : false,
				success : function(response) {
					paperEditForm.form('load', response);
					$('div.validatebox-tip').remove();
					paperEditDialog.dialog('open');
					$.messager.progress('close');
				}
			});
		} else {
			$.messager.alert('提示', '请选择一项要编辑的记录！', 'error');
		}
	}
	function showCdesc(index) {
		var rows = datagrid.datagrid('getRows');
		var row = rows[index];
		$.messager.progress({
			text : '数据加载中....',
			interval : 100
		});
		$.ajax({
			url : 'paperAction!showDesc.action',
			data : {
				cid : row.cid
			},
			dataType : 'json',
			cache : false,
			success : function(response) {
				if (response && response.csummary) {
					showCdescDialog.find('div[name=csummary]').html(response.csummary);
					showCdescDialog.dialog('open');
				} else {
					$.messager.alert('提示', '没有电子凭证 ！', 'error');
				}
				$.messager.progress('close');
			}
		});
		datagrid.datagrid('unselectAll');
	}
</script>
</head>
<body class="easyui-layout">
	<div region="north" border="false" title="过滤条件" style="height: 90px;overflow: hidden;" align="left">
		<form id="searchForm">
			<table class="tableForm datagrid-toolbar" style="width: 100%;height: 100%;">
				<tr>
					<th>负责人</th>
					<td><input name="cprojectid" style="width:315px;" /></td>
				</tr>
				<tr>
					<th>记账时间</th>
					<td><input name="ccountTimeStart" class="easyui-datetimebox" editable="false" style="width: 155px;" />至<input name="ccountTimeEnd" class="easyui-datetimebox" editable="false" style="width: 155px;" /><a href="javascript:void(0);" class="easyui-linkbutton" onclick="_search();">过滤</a><a href="javascript:void(0);" class="easyui-linkbutton" onclick="cleanSearch();">取消</a></td></td>
				</tr>				
			</table>
		</form>
	</div>
	<div region="center" border="false">
		<table id="datagrid"></table>
	</div>

	<div id="menu" class="easyui-menu" style="width:120px;display: none;">
		<div onclick="add();" iconCls="icon-add">增加</div>
		<div onclick="del();" iconCls="icon-remove">删除</div>
		<div onclick="edit();" iconCls="icon-edit">编辑</div>
	</div>

	<div id="paperAddDialog" style="display: none;width: 600px;height: 400px;" align="center">
		<form id="paperAddForm" method="post">
			<table class="tableForm">
				<tr>
					<th>论文名称</th>
					<td><input name="cname" class="easyui-validatebox" required="true" missingMessage="请填写论文名称" /></td>					
					<th>中文关键词</th>
					<td><input name="cckeyword" class="easyui-validatebox" required="true" missingMessage="请填写中文关键词" /></td>
				</tr>
				<tr>
					<th>英文关键词</th>
					<td><input name="cekeyword" class="easyui-validatebox" required="true"   missingMessage="请填写英文关键词" /></td>				
					<th>语种</th>
					<td><input name="clanguage" class="easyui-validatebox" required="true"   missingMessage="请填写语种" /></td>
				</tr>
				
				<tr>
					<th>第一作者</th>
					<td><input name="cfcontactid" class="easyui-validatebox" required="true"   missingMessage="请填写第一作者" /></td>				
					<th>通讯作者</th>
					<td><input name="cccontactid" class="easyui-validatebox" required="true"   missingMessage="请填写通讯作者" /></td>
				</tr>
				<tr>
					<th>期卷名称</th>
					<td><input name="cperiodical" class="easyui-validatebox" required="true"   missingMessage="请填写期卷名称" /></td>				
					<th>卷期</th>
					<td><input name="cissue" class="easyui-validatebox" required="true"   missingMessage="请填写卷期" /></td>
				</tr>
				<tr>
					<th>论文发表状态</th>
					<td><input name="cstate" class="easyui-validatebox" required="true"   missingMessage="请填写论文发表状态" /></td>
					<th>论文发表时间</th>
					<td><input name="cpublishtime" class="easyui-datebox" editable="false" style="width: 155px;" /></td>
				</tr>
				<tr>
					<th>引文索引类型</th>
					<td><input name="cclassify" class="easyui-validatebox" required="true"   missingMessage="请填写引文索引类型" /></td>				
					<th>引文索引号</th>
					<td><input name="cinde" class="easyui-validatebox" required="true"   missingMessage="请填写引文索引号" /></td>
				</tr>
				<tr>
					<th>数据录入人</th>
					<td><input name="ctypeman" class="easyui-validatebox" required="true"   missingMessage="请填写数据录入人" /></td>
					<th>数据录入日期</th>
					<td><input name="ctypetime" class="easyui-datebox" editable="false" style="width: 155px;" /></td>
				</tr>	
				<tr>
					<th>摘要</th>
					<td colspan="4">
					<textarea id="cdescAdd" name="ccsummary"  rows="12" cols="80" style="width: 80%"></textarea>
					</td>
				</tr>			
			</table>
		</form>
	</div>

	<div id="paperEditDialog" style="display: none;width: 600px;height: 400px;" align="center">
		<form id="paperEditForm" method="post">
			<input type="hidden" name="cid" />
			<table class="tableForm">
				<tr>
					<th>论文名称</th>
					<td><input name="cname" class="easyui-validatebox" required="true" missingMessage="请填写论文名称" /></td>					
					<th>中文关键词</th>
					<td><input name="cckeyword" class="easyui-validatebox" required="true" missingMessage="请填写中文关键词" /></td>
				</tr>
				<tr>
					<th>英文关键词</th>
					<td><input name="cekeyword" class="easyui-validatebox" required="true"   missingMessage="请填写英文关键词" /></td>				
					<th>语种</th>
					<td><input name="clanguage" class="easyui-validatebox" required="true"   missingMessage="请填写语种" /></td>
				</tr>
				
				<tr>
					<th>第一作者</th>
					<td><input name="cfcontactid" class="easyui-validatebox" required="true"   missingMessage="请填写第一作者" /></td>				
					<th>通讯作者</th>
					<td><input name="cccontactid" class="easyui-validatebox" required="true"   missingMessage="请填写通讯作者" /></td>
				</tr>
				<tr>
					<th>期卷名称</th>
					<td><input name="cperiodical" class="easyui-validatebox" required="true"   missingMessage="请填写期卷名称" /></td>				
					<th>卷期</th>
					<td><input name="cissue" class="easyui-validatebox" required="true"   missingMessage="请填写卷期" /></td>
				</tr>
				<tr>
					<th>论文发表状态</th>
					<td><input name="cstate" class="easyui-validatebox" required="true"   missingMessage="请填写论文发表状态" /></td>
					<th>论文发表时间</th>
					<td><input name="cpublishtime" class="easyui-datebox" editable="false" style="width: 155px;" /></td>
				</tr>
				<tr>
					<th>引文索引类型</th>
					<td><input name="cclassify" class="easyui-validatebox" required="true"   missingMessage="请填写引文索引类型" /></td>				
					<th>引文索引号</th>
					<td><input name="cinde" class="easyui-validatebox" required="true"   missingMessage="请填写引文索引号" /></td>
				</tr>
				<tr>
					<th>数据录入人</th>
					<td><input name="ctypeman" class="easyui-validatebox" required="true"   missingMessage="请填写数据录入人" /></td>
					<th>数据录入日期</th>
					<td><input name="ctypetime" class="easyui-datebox" editable="false" style="width: 155px;" /></td>
				</tr>
				<tr>
					<th>摘要</th>
					<td colspan="4">
					<textarea id="cdescEdit" name="ccsummary"  rows="12" cols="80" style="width: 80%"></textarea>
					</td>
				</tr>
			</table>
		</form>
	</div>

	<div id="showCdescDialog" style="display: none;overflow: auto;width: 500px;height: 400px;">
		<div name="csummary"></div>
	</div>

</body>
</html>