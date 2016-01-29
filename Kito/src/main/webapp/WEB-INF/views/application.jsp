<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GroupTabs Example</title>
    <!-- Ext -->

    <link rel="stylesheet" type="text/css" href="../shared/example.css" />
    <link rel="stylesheet" type="text/css" href="../portal/portal.css" />
    <link rel="stylesheet" type="text/css" href="../ux/css/GroupTabPanel.css" />
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/extjs/ext-all.js"></script>
    
    <!-- </x-bootstrap> -->
    <script type="text/javascript" src="all-classes.js"></script>

    <!-- shared example code -->
    <script type="text/javascript">
    Ext.create('Ext.container.Viewport', {
        layout: 'border',
        renderTo: Ext.getBody(),
        items: [{
            region: 'north',
            html: '<h1 class="x-panel-header">Page Title</h1>',
            autoHeight: true,
            border: false,
            margins: '0 0 5 0'
        }, {
            region: 'west',
            collapsible: true,
            title: 'Navigation',
            width: 150
            // could use a TreePanel or AccordionLayout for navigational items
        }, {
            region: 'south',
            title: 'South Panel',
            collapsible: true,
            html: 'Information goes here',
            split: true,
            height: 100,
            minHeight: 100
        }, {
            region: 'east',
            title: 'East Panel',
            collapsible: true,
            split: true,
            width: 150
        }, {
            region: 'center',
            xtype: 'tabpanel', // TabPanel itself has no title
            activeTab: 0,      // First tab active by default
            items: {
                title: 'Default Tab',
                html: 'The first tab\'s content. Others may be added dynamically'
            }
        }]
    });
    </script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/lib/grouptabs.js"></script>
    <!-- page specific -->
    <style type="text/css">
        /* styles for iconCls */
        .x-icon-tickets {
            background-image: url('images/tickets.png');
        }
        .x-icon-subscriptions {
            background-image: url('images/subscriptions.png');
        }
        .x-icon-users {
            background-image: url('images/group.png');
        }
        .x-icon-templates {
            background-image: url('images/templates.png');
        }
    </style>
</head>
<body></body>
</html>
