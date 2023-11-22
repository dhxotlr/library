<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="<c:url value='/resources/css/common/common.css' />" rel="stylesheet" type="text/css">
<link href="<c:url value='/resources/css/user/book_mall.css' />" rel="stylesheet" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>

    <jsp:include page="../../include/header.jsp" />
	
	<jsp:include page="../include/nav.jsp" />

    <section>
    	<div id="section_wrap">
    		<div class="word">
				<h3>판매도서</h3>
			</div>
		    <div class="mallBookList"></div>			
    	</div>
    </section>

	<jsp:include page="../../include/footer.jsp" />


<script>
	$.noConflict()
	var jQ = jQuery
	jQ.ajax({
		type :"GET",
		contentType : "application/json; charset=UTF-8",
		url : "${pageContext.request.contextPath}/book/user/mallBookAll",
		success : function(rdata){
			jQ(".mallBookList").html(rdata)
		},
		error : function(error){
			console.log(error)
		}
	})
	
	
	
</script>

</body>
</html>