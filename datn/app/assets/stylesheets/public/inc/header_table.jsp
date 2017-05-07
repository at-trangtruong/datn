<%@page import="bean.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if lt IE 7 ]> <html lang="vi" class="ie6">    <![endif]-->
<!--[if IE 7 ]>    <html lang="vi" class="ie7">    <![endif]-->
<!--[if IE 8 ]>    <html lang="vi" class="ie8">    <![endif]-->
<!--[if IE 9 ]>    <html lang="vi" class="ie9">    <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="no-js" lang="vi">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>VinaEnter Edu</title>
<meta name="description" content="VinaEnter Edu">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- google font  -->
<link href='https://fonts.googleapis.com/css?family=Oxygen:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<!-- Favicon
        ============================================ -->
<link rel="shortcut icon" type="image/ico"
	href="<%=request.getContextPath()%>/templates/public/img/favicon.ico" />

<!-- Datatable -->
<link href="https://rawgit.com/gjunge/rateit.js/master/scripts/rateit.css" rel="stylesheet" type="text/css">
	<script
	src="<%=request.getContextPath()%>/templates/public/js/jquery.rateit.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/templates/public/css/jquery.dataTables.min.css">

<!-- style CSS
        ============================================ -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/templates/public/css/agency.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/templates/public/css/style.css">

<!-- JS -->
<script
	src="<%=request.getContextPath()%>/templates/public/js/jquerys.js"></script>

<!-- jquery-1.11.3.min js
        ============================================ -->
<!-- <script src="<%=request.getContextPath()%>/templates/public/js/vendor/jquery-1.11.3.min.js"></script>    -->
<script
	src="<%=request.getContextPath()%>/templates/public/js/jquery-1.11.2.min.js"></script>
<script
	src="<%=request.getContextPath()%>/templates/public/js/validate.js"></script>
<script
	src="<%=request.getContextPath()%>/templates/public/js/jquery.validate.js"></script>

<!-- bootstrap js
        ============================================ -->
<script
	src="<%=request.getContextPath()%>/templates/public/js/bootstrap.min.js"></script>

<!-- Datatable -->
<script
	src="<%=request.getContextPath()%>/templates/public/js/jquery.dataTables.min.js"></script>

<script
	src="<%=request.getContextPath()%>/templates/public/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>

	<%
		Users userlogin = (Users) session.getAttribute("userloginpublic");
	%>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!--Start nav  area -->
	<div class="nav_area" id="sticker">
		<div class="container">
			<div class="row">
				<!--logo area-->
				<div class="col-md-3 col-sm-3 col-xs-4">
					<div class="logo">
						<a href="/"><img style="height: 135px; margin-top: -50px; "
							src="<%=request.getContextPath()%>/templates/public/img/logpublic.jpg"
							alt=""></a>
					</div>
				</div>
				<!--end logo area-->
				<!--nav area-->
				
				<!--end nav area-->
			</div>
		</div>
	</div>
	<!--end header  area -->