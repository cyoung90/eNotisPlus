<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %><%@ page import="java.util.*" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" 			prefix="c" %><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" 			prefix="fmt" %><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 	prefix="fn" %><%@ taglib uri="http://www.springframework.org/tags" 		prefix="spring" %><%@ taglib uri="http://www.springframework.org/tags/form" 	prefix="form" %><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0"><title>eNotis+</title><!-- user set --><c:set var="projectName" value="eNotis+"/><c:set var="ctx" value="${pageContext.request.contextPath}"/><!-- Add to home screen for Safari on iOS --><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black"><meta name="apple-mobile-web-app-title" content="eNotis+"><link rel="apple-touch-icon" href="${ctx}/images/app-icons/icon-144x144.png"><meta name="msapplication-TileImage" content="${ctx}/images/app-icons/icon-144x144.png"><meta name="msapplication-TileColor" content="#ffffff"><!-- Window title icon --><link rel="shortcut icon" href="${ctx}/favicon.ico"><!-- user link --><link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.blue-light_blue.min.css" /><!-- 전체 테마 컬러 --><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><!-- 미터리얼 아이콘 --><link rel="stylesheet" href="${ctx}/css/base.css" /><!-- 기본 css --><!-- user script --><script src="${ctx}/js/material/material.min.js" charset="utf-8"></script><script src="${ctx}/js/jquery-1.9.1.min.js" charset="utf-8"></script><script src="${ctx}/js/common.js" charset="utf-8"></script><script src="${ctx}/js/sha256.js" charset="utf-8"></script><%-- <script src="<c:url value='/js/userFunction.js'/>" charset="utf-8"></script> --%>