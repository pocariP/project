<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="_ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application" />

<sec:authorize access="hasRole('ROLE_USER')">
<sec:authentication property="principal.user" var="user" scope="session"/>
</sec:authorize>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${_ctx}/res/css/styles.css">
<link rel="stylesheet" href="${_ctx}/res/css/main.css">
<link rel="stylesheet" href="${_ctx}/res/css/header.css">
<link rel="shortcut icon" href="${_ctx}/res/img/favicon.ico">

<script type="text/javascript" src="${_ctx}/res/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${_ctx}/res/js/jquery.min.js"></script>
<script type="text/javascript" src="${_ctx}/res/js/plugins/validate/jquery.validate.js"></script>
<script type="text/javascript" src="${_ctx}/res/js/plugins/validate/additional-methods.js"></script>
<script type="text/javascript" src="${_ctx}/res/js/plugins/validate/messages_ko.js"></script>
<script type="text/javascript" src="${_ctx}/res/js/mask/jquery.meio.mask.js"></script>
<script type="text/javascript" src="${_ctx}/res/js/jquery.form.js"></script>
<script type="text/javascript" src="${_ctx}/res/js/main.js"></script>
