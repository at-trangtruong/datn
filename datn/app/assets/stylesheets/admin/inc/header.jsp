<%@page import="bean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Administrator </title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Trung tâm đào tạo lập trình VineEnter">
<meta name="author" content="vinaenter">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<!-- Datatable -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/templates/admin/css/jquery.dataTables.min.css">

<link
	href="<%=request.getContextPath()%>/templates/admin/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/templates/admin/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/templates/admin/css/templatemo-style.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/templates/admin/css/style.css"
	rel="stylesheet">
<link rel="shortcut icon" type="image/ico"
	href="<%=request.getContextPath()%>/templates/admin/images/favicon_admin.png" />

<!-- JS -->
<script
	src="<%=request.getContextPath()%>/templates/admin/js/jquery-1.11.2.min.js"></script>
<script
	src="<%=request.getContextPath()%>/templates/admin/js/bootstrap.min.js"></script>
<!-- Datatable -->
<script
	src="<%=request.getContextPath()%>/templates/admin/js/jquery.dataTables.min.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/admin/js/jquery.validate.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/admin/js/validate.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>
<%
	Member userlogin = (Member)session.getAttribute("userlogin");
%>
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
				<div class="square"></div>
				<%
					// Users userlogin = (Users)session.getAttribute("userlogin");
				%>
				<h1>Admin</h1>
			</header>
			<div class="profile-photo-container">
				<img
					src="<%=request.getContextPath()%>/templates/admin/images/logoadmin.png"
					alt="Profile Photo" class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<!-- Search box -->
			<!-- <form class="templatemo-search-form" role="search">
    <div class="input-group">
        <button type="submit" class="fa fa-search"></button>
        <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">           
    </div>
  </form> -->
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
					<li><a href="<%=request.getContextPath()%>/admin/danh-muc"><i
							class="fa fa-folder-open fa-fw"></i>Danh mục nhà hàng</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/nha-hang"><i
							class="fa fa-database fa-fw"></i>Nhà hàng</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/menu"><i
							class="fa fa-folder-open fa-fw"></i>Menu</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/nguoi-dung"><i
							class="fa fa-comment fa-fw"></i>Người dùng</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/lien-he"><i
							class="fa fa-envelope-o fa-fw"></i>Liên hệ</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/thong-tin"><i
							class="fa fa-info-circle fa-fw"></i>Thông tin</a></li>
					<li><a href="<%=request.getContextPath()%>/admin/quang-cao"><i
							class="fa fa-money fa-fw"></i>Quảng cáo</a></li>
					

					<!-- class="active" -->
				</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
						<ul style="margin-left: 100px;" class="text-uppercase">
							<li><a href="<%=request.getContextPath()%>/admin/trang-chu">Trang
									chủ</a></li>
							<li><a
								href="<%=request.getContextPath()%>/admin/sua-member?uid=<%=userlogin.getId_user()%>">Tài
									khoản</a></li>
							<li><a href="<%=request.getContextPath()%>/admin/member">Member</a></li>
							<li><a href="<%=request.getContextPath()%>/admin/logout">Đăng
									xuất</a></li>
						</ul>
					</nav>
				</div>
			</div>