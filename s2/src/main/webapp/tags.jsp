<%--
  Created by IntelliJ IDEA.
  User: dengry
  Date: 14-8-2
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>
</head>
<body>

<ol>
    <li>property: <s:property value="username"/>!${username}</li>
    <li>property 取值为字符串: <s:property value="'username'"/></li>
    <li>property 设定默认值: <s:property value="admin" default="管理员"/></li>
    <li>property 设定HTML: <s:property value="'<hr/>'" escape="true"/></li>

    <li><s:set var="personName" value="username"/>
        Hello, <s:property value="#personName"/></li>
    <li>set 从request取值: <s:property value="#request.personName"/></li>
    <li>set 设定var，范围为ActionContext: <s:set var="adminPassword" value="password"
                                           scope="page"/>${pageScope.adminPassword}</li>
    <hr/>
    <s:bean name="com.struts2.tags.SimpleCounter" var="sct">
        <s:param name="foo" value="'BAR'"/>
        The value of foot is : <s:property value="foo"/>, when inside the bean tag <br/>
    </s:bean>
    <s:property value="#sct.foo"/>

    <hr/>
    <li><s:fielderror fieldName="name" theme="simple"></s:fielderror></li>
    <li><s:property value="fieldErrors.name[0]"/></li>

    <hr/>

    <li><s:property value="#parameters.age[0]"></s:property></li>
    <li><s:if test="#parameters.age[0]<20">年轻人</s:if>
        <s:elseif test="#parameters.age[0]<30">成年人</s:elseif>
        <s:else>壮年人</s:else>

    </li>
    <hr/>
    <li>遍历集合：<br/>
        <s:iterator value="{1, 2, 3}" var="x">
            <s:property value="#x"/> |
        </s:iterator>
    </li>

    <li>使用status:<br/>
        <s:iterator value="{'aaa', 'bbb', 'ccc'}" status="s">
            <s:property/> |
            遍历过的元素总数：<s:property value="#s.count"/> |
            遍历过的元素索引：<s:property value="#s.index"/> |
            当前是偶数？：<s:property value="#s.even"/> |
            当前是奇数？：<s:property value="#s.odd"/> |
            是第一个元素吗？：<s:property value="#s.first"/> |
            是最后一个元素吗？：<s:property value="#s.last"/>
            <br/>
        </s:iterator>

    </li>

    <li>
        <s:iterator value="#{1:'a',2:'b'}">
            <s:property value="key"/> | <s:property value="value"/> <br />
        </s:iterator>
    </li>

    <li>
        <s:iterator value="#{1:'a', 2:'b', 3:'c'}" var="x">
            <s:property value="#x.key"/> | <s:property value="#x.value"/> <br />
        </s:iterator>
    </li>

    <s:debug></s:debug>
</ol>
</body>
</html>
