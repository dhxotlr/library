<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/common/common.css' />" rel="stylesheet" type="text/css">
<link href="<c:url value='/resources/css/user/order_confirm.css' />" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="../../include/header.jsp" />
	<jsp:include page="../include/nav.jsp" />
	
	<section>
		<div class="myhanbit_wrap">
		
		<div class="table_area">
			<table class="tbl_type_list" border="0" cellspacing="0" summary="전체목록 리스트 테이블">
				<caption>전체목록 리스트</caption>
				<colgroup>
				<col width="160px">
				<col width="180px">
				<col width="">
				<col width="130px">
				<col width="160px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">주문번호</th>
						<th scope="col">주문일자</th>
						<th scope="col">상품명</th>
						<th scope="col">주문금액</th>
						<th scope="col">주문상태</th>
					</tr>
				</thead>
				<tbody>
						
					<tr>
						<td><a href="./order_history_view.html?ordno=1700452979767">1700452979767</a></td>
						<td>2023.11.20 13:02</td>
						<td class="left">리얼 홋카이도 [2024~2025] 외 1개 </td>
						<td class="right">37,350원</td>
						<td><span class="ord_state">취소완료</span></td>
					</tr>
						
				
				</tbody>
			</table>
			
			<!-- 페이징 -->
			<div class="paginate bdr_no">
							</div>
			<!-- //페이징 -->
						
		</div>
		
		
	</div>
	</section>
	
	<jsp:include page="../../include/footer.jsp" />
</body>
</html>