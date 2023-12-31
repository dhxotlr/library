<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매도서등록</title>
<link href="<c:url value='/resources/css/common/common.css' />" rel="stylesheet" type="text/css">
<link href="<c:url value='/resources/css/admin/mall_book_form.css' />" rel="stylesheet" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>

<jsp:include page="../../include/header.jsp" />
	
	<jsp:include page="../include/nav.jsp" />
	
	<section>
		
		<div id="section_wrap">
			<div class="word">
				<h3>판매도서 등록</h3>
			</div>

		<div class="book_mall_form">
			<form name="book_mall_form">
				<input type="text"		name="bm_name" 		placeholder="도서명"> <br>
				<input type="text"		name="bm_author" 	placeholder="저자"> <br>
				<input type="text"		name="bm_publisher"	placeholder="출판사"> <br>
				<input type="text"		name="bm_isbn"		placeholder="ISBN"> <br>
				<input type="text"		name="bm_price"		placeholder="가격"> <br>
				<input type="text"		name="bm_quantity"	placeholder="수량"> <br>
				<input type="file" 		name="bm_photo0" 	class="files"> <br>
				<input type="file" 		name="bm_photo1" 	class="files"> <br>
				<input type="file" 		name="bm_photo2" 	class="files"> <br>
				<input type="button"	value="전송"         onclick="bookMallConfirm()"> 
				<input type="reset"		value="취소">
			</form>
		</div>

</div>
		
	</section>
	
	<jsp:include page="../../include/footer.jsp" />


<script>
   $.noConflict();
   var jQ = jQuery;
   let form = document.book_mall_form;
   const formData = new FormData();
   
   function bookMallConfirm(){
	   let data = {
			bm_name : form.bm_name.value,
			bm_author: form.bm_author.value,
			bm_publisher:form.bm_publisher.value,
			bm_isbn:form.bm_isbn.value,
			bm_price:form.bm_price.value,
			bm_quantity:form.bm_quantity.value
		}
		
		let fileInput = jQ(".files")
		for (let i=0; i<fileInput.length; i++) {
			if (fileInput[i].files.length>0) {
				for (let j=0; j<fileInput[i].files.length; j++) {
					formData.append("file", jQ('.files')[i].files[j] )
				}
			}
		}
		
		formData.append("key", new Blob([ JSON.stringify(data) ], {type:"application/json"}))
		
		jQ.ajax({
			type :"POST",
			enctype : "multipart/form-data",
			url : "${pageContext.request.contextPath}/book/admin/bookMallConfirm",
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(rdata){
				if (rdata.result<0) {
					alert("도서가 등록되지 않았습니다.")
					formData.delete("key");
					formData.delete("file");
				} else {
					form.bm_name.value = "";
					form.bm_author.value = "";
					form.bm_publisher.value = "";
					form.bm_isbn.value = "";
					form.bm_price.value = "";
					form.bm_quantity.value = "";
					form.bm_photo0.value = "";
					form.bm_photo1.value = "";
					form.bm_photo2.value = "";
					formData.delete("key");
					formData.delete("file");
				}
			},
			error : function(error){
				console.log(error)
			}
		})
		
   }
</script>

</body>
</html>