<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html ><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>购物车</title>
<meta name="author" content="Mango Team">
<meta name="copyright" content="Mango">
<link href="./css/common.css" rel="stylesheet" type="text/css">
<link href="./css/cart.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/common.js"></script>

</head>
<body>

<%@ include file="./header.jsp" %>	
	<div class="container cart">
		<div class="span24">
			<div class="step step1">
				
			</div>
				<table>
					<tbody><tr>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
               <c:forEach  var="cartItem" items="${cart.cartItems }">				
						<tr>
							<td width="60">
								<input type="hidden" name="id" value="22">
								<img src="${pageContext.request.contextPath }/${cartItem.product.image }">
							</td>
							<td>
								<a target="_blank"> ${cartItem.product.pname }</a>
							</td>
							<td>
								￥${cartItem.product.shop_price }
							</td>
							<td class="quantity" width="60">
								<input type="text" name="quantity"  maxlength="4"   value="${cartItem.count }" onpaste="return false;">
								<div>
									<span class="increase">&nbsp;</span>
									<span class="decrease">&nbsp;</span>
								</div>
							</td>
							<td width="140">
								<span class="subtotal"  >￥${cartItem.subtotal }</span>
							</td>
							<td>
								<a href="${pageContext.request.contextPath }/cart_romoveCart.action?pid=${cartItem.product.pid}" class="delete">删除</a>
							</td>
						</tr>
						</c:forEach>	
				</tbody>
		</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<em id="promotion"></em>
							<em>
								登录后确认是否享有优惠
							</em>
					赠送积分: <em id="effectivePoint">596</em>
					<c:if test="${cart.total>0 }">
					商品金额: <strong id="effectivePrice" >￥${cart.total } 元</strong>
					</c:if>
					<c:if test="${cart.total==0 }">
						商品金额: <strong id="effectivePrice" >￥0 元</strong>
					</c:if>
				</div>
				<c:if test="${cart.cartItems.size()>0  }">
				<div class="bottom">
					<a href="${pageContext.request.contextPath }/cart_clearCart.action" id="clear" class="clear">清空购物车</a>
					<a href="${pageContext.request.contextPath }/order_saveOrder.action" id="submit" class="submit" >提交订单</a>
				</div>
				</c:if>
				<c:if test="${cart.cartItems.size()==0}">
				<div class="bottom">
					<a href="javascipt:void(0)" id="clear" class="clear">清空购物车</a>
					<a href="javascipt:void(0)" id="submit" class="submit" >提交订单</a>
				</div>
				
				</c:if>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="./image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
</div>	</div>
	<div class="span24">
		<ul class="bottomNav">
				<li>
						<a >关于我们</a>
						|
					</li>
					<li>
						<a>联系我们</a>
						|
					</li>
					<li>
						<a>招贤纳士</a>
						|
					</li>
					<li>
						<a>法律声明</a>
						|
					</li>
					<li>
						<a>友情链接</a>
						|
					</li>
					<li>
						<a target="_blank">支付方式</a>
						|
					</li>
					<li>
						<a  target="_blank">配送方式</a>
						|
					</li>
					<li>
						<a>服务声明</a>
						|
					</li>
					<li>
						<a>广告声明</a>
						
					</li>
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2005-2013 Mango商城 版权所有</div>
	</div>
</div>
</body></html>