<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="./index.jsp">
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt="传智播客"/>
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
	<img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
</div>	</div>
	<div class="span10 last">
		<div class="topNav clearfix">
			<ul>
			<c:if test="${userbean==null}">
			<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="${pageContext.request.contextPath}/user/user_loginPage.action">登录</a>|
				</li>
				<li id="headerRegister" class="headerRegister" style="display: list-item;">
					<a href="${pageContext.request.contextPath}/user/user_registerPage.action">注册</a>
				</li>
			</c:if>
			<c:if test="${userbean!=null}">
			    <li id="headerUesename" class="headerUesename" style="display: list-item;">
					<span>${sessionScope.userbean.name}|
					<a href="${pageContext.request.contextPath}/user/user_logout.action">[退出]</a>
					<a href="${pageContext.request.contextPath}/order_findMyOrders.action">[我的订单]</a>
					</span>
				</li>
			</c:if>
						<li>
							<a>会员中心</a>
							|
						</li>
						<li>
							<a>购物指南</a>
							|
						</li>
						<li>
							<a>关于我们</a>
							
						</li>
			</ul>
		</div>
		<div class="cart">
			<a  href="${pageContext.request.contextPath}/cart_lookCart.action">购物车</a>
		</div>
			<div class="phone">
				客服热线:
				<strong>96008/53277764</strong>
			</div>
	</div>
	<div class="span24">
		<ul class="mainNav">
		<li>
							<a href="${pageContext.request.contextPath}/indexAction.action">首页</a>|
							
						</li>
		<c:forEach items="${catagorylist}" var="item" varStatus="Status">
		            <li>
						<a href="${pageContext.request.contextPath}/product_findProductBycid?cid=${item.cid}&page=1">${item.cname}</a>
						|
					</li>
		 
		</c:forEach>
		</ul>
	</div>
</div>	