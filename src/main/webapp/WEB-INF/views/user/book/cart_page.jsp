<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/common/common.css' />" rel="stylesheet" type="text/css">
<link href="<c:url value='/resources/css/user/cart_page.css' />" rel="stylesheet" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>

<jsp:include page="../../include/header.jsp" />
<jsp:include page="../include/nav.jsp" />

<script>
	$.noConflict();
	var jQ = jQuery;
	let user_no = "${loginedUserMemberVo.u_m_no}";
	if (!user_no){
		user_no = 0;
	}
</script>

<section>
	<div id="section_wrap">
		<div class="word">
			<h3>장바구니</h3>
		</div>
		<div class="cartBox"></div>
	</div>
</section>	

<jsp:include page="../../include/footer.jsp" />

<script>
	jQ.ajax({
		type :"GET",
		contentType : "application/json; charset=UTF-8",
		url : "${pageContext.request.contextPath}/book/user/cartList/"+user_no,
		success : function(rdata){
			jQ(".cartBox").html(rdata);
		},
		error : function(error){
			console.log(error)
		}
	})
	
</script>


</body>
</html>