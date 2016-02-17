<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<html>
<head>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/extjs/ext-all.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/extjs/resources/css/ext-all.css" />

<title>Home</title>
</head>
<body>
<script type="text/javascript">
   // Ext.require(['*']);

    Ext.onReady(function() {

       Ext.QuickTips.init();

        
    	var displayPanel = new Ext.Panel({
    	    height   : 800,
    	    //layout: 'fit',
    	    renderTo  : 'main1',
    	    layout:'border',
    	    defaults: {
    	        collapsible: true,
    	        split: true,
    	        bodyStyle: 'padding:1px'
    	    },
    	    items: [
    	    	{
	    	        title: 'Menu list',
	    	        region:'west',
	    	        stateId: 'navigation-panel',
	    	        margins: '0 0 0 5',
	    	        collapsible: true,
	    	        split: true,
	                width: 200,
	                minWidth: 175,
	                maxWidth: 400,
	                animCollapse: true,
	                layout: 'accordion',
	                items: [{
	                    title: 'Cập nhật hồ sơ',
	                    contentEl: 'left-updatefile',
	                    iconCls: 'nav' 
	                },{
	                    title: 'Tra cứu',
	                    contentEl: 'left-search',
	                    iconCls: 'search'
	                }, {
	                    title: 'Danh mục',
	                    contentEl: 'div-danhmuc',
	                    iconCls: 'info'
	                },
	                {
	                    title: 'Thiết lập kho',
	                    iconCls: 'settings',
	                    contentEl: 'left-setting',
	                }]
    	    	},{
	    	        title: 'Main Content',
	    	        contentEl: 'div-main',
	    	        collapsible: false,
	    	        region:'center',
	    	        margins: '0 0 0 5'
    	    	}],
    	    bbar    : [
    	      '->',
    	      {
    	        text    : 'Reset Example1',
    	        handler : function() {
    	      
    	        }
    	      }
    	    ]
    	  });
    });
    </script>
    <div id="main1" style="width: 100%; border: none;"></div>
    <div id="left-updatefile">
    	<ul>
    		<li>Item 1</li>
    		<li>Item 2</li>
    		<li>Item 1</li>
    	</ul>
    </div>
    <div id="left-search">
    <ul>
    		<li>Item 1</li>
    		<li>Item 2</li>
    		<li>Item 1</li>
    	</ul></div>
    <div id="left-setting">
    <ul>
    		<li>Item 1</li>
    		<li>Item 2</li>
    		<li>Item 1</li>
    	</ul></div>
    <div id="div-danhmuc">
    	<ul>
    		<li>Item 1</li>
    		<li>Item 2</li>
    		<li>Item 1</li>
    	</ul>
    </div>
    <div id="div-main">
    	Ôi my god
    </div>
</body>
</html>
