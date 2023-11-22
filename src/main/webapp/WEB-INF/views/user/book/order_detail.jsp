<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/common/common.css' />" rel="stylesheet" type="text/css">
<link href="<c:url value='/resources/css/user/order_detail.css' />" rel="stylesheet" type="text/css">

</head>
<body>
	<jsp:include page="../../include/header.jsp" />
	<jsp:include page="../include/nav.jsp" />
	
	<section>
	<div class="myhanbit_wrap">
    <h3 class="ord_num">주문번호 : ${orderDetailVos.get(0).getOrder_no()}</h3>
    <p class="myhanbit_reference2">주문취소 규정<a href="javascript:;" onclick="cancel_rule_layer_open('layer_cancel_rule');return false;"><img src="https://www.hanbit.co.kr/images/store/ico_question.gif" alt="주문취소 규정"></a>
    </p>
    
    <!-- 주문상태 -->
    <div class="order_state_area">
      <!-- 
      해당 주문상태일 경우 클래스에 _r 붙습니다.
      입금대기  state1 // state1_r 
      결제완료  state2 // state2_r
      배송준비  state3 // state3_r
      배송중    state4 // state4_r
      거래완료  state5 // state5_r
      취소요청  state6 // state6_r
      취소완료  state7 // state7_r
      -->
      <ul class="progress_order">  
        <li class="progress state1">입금대기</li>
        <li class="bl_next"></li>
        <li class="progress state2">결제완료</li>
        <li class="bl_next"></li>
        <li class="progress state3">배송준비</li>
        <li class="bl_next"></li>
        <li class="progress state4">배송중</li>
        <li class="bl_next"></li>
        <li class="progress state5">거래완료</li>
      </ul>
  
            
      <ul class="cancel_order">
        <li class="cancel state6">취소요청</li>
        <li class="bl_next"></li>
        <li class="cancel state7_r">취소완료</li>
      </ul>

    </div>
    <!-- //주문상태 -->
    
    <!-- 주문고객정보 -->
    <p class="tit">주문 고객 정보</p>
    <div class="table_area">
      <table class="tbl_type_list5" border="0" cellspacing="0" summary="주문고객 정보 테이블">
        <caption>주문고객 정보</caption>
        <colgroup>
        <col width="160px">
        <col width="410px">
        <col width="160px">
        <col width="">
        </colgroup>
        <tbody>
          <tr>
            <th>이름</th>
            <td>김은영</td>
            <th>주문접수일</th>
            <td>2023-11-20 13:02:59</td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- //주문고객정보 -->

        
    <!-- 배송지 정보- 실물 상품 있는 경우에만 노출 -->
    <div class="delivery_info">
            <p class="tit">배송지 정보</p>
            <div class="table_area">
        <table class="tbl_type_list5" border="0" cellspacing="0" summary="배송지 정보 테이블">
          <caption>배송지 정보</caption>
          <colgroup>
          <col width="160px">
          <col width="220px">
          <col width="160px">
          <col width="220px">
          <col width="160px">
          <col width="">
          </colgroup>
          <tbody>
            <tr>
              <th>받으시는 분</th>
              <td>김은영</td>
              <th>휴대전화</th>
              <td>010-8156-2407</td>
              <th>일반전화</th>
              <td>--</td>
            </tr>
            <tr>
              <th>주소</th>
              <td colspan="5">[08368] 서울 구로구 항동로 43 (항동, 하버라인 3단지) 310동 1702호</td>
            </tr>
          </tbody>
        </table>
      </div>
          </div>
    <!-- //배송지 정보 -->
    
    <!-- 상품 정보 -->
    <div class="product_info">
      <p class="tit">상품 정보</p>
      <div class="table_area_cart">
        <table class="tbl_type_list" border="0" cellspacing="0" summary="주문상품 리스트 테이블">
          <caption>주문상품 리스트</caption>
          <colgroup>
          <col width="140px">
          <col width="">
          <col width="136px">
          <col width="86px">
          <col width="140px">
          </colgroup>
          <thead>
            <tr>
              <th colspan="2" scope="col">상품명</th>
              <!--th scope="col">주문상태</th-->
              <th scope="col">판매가</th>
              <th scope="col">수량</th>
              <th scope="col">합계</th>
            </tr>
          </thead>
          <tbody>
                        <tr>
              <td class="thumb_area2"><a href="/store/books/look.php?p_code=B4012673740"><img src="/data/books/B4012673740_m.jpg" alt="" class="thumb"></a></td>
              <td class="left info">
                <span class="prod_type">책</span>
                <p class="txt_nomal"><a href="/store/books/look.php?p_code=B4012673740">리얼 홋카이도 [2024~2025]</a></p>
                <!-- 2차 상품 -->
                                                
                <!-- //2차 상품 -->
              </td>              
              <td>
                <p class="price">16,650원
              </p></td>
              <td>1</td>
              <td class="price2">16,650원</td>
            </tr>                      
                        <tr>
              <td class="thumb_area2"><a href="/store/books/look.php?p_code=B5838079014"><img src="/data/books/B5838079014_m.jpg" alt="" class="thumb"></a></td>
              <td class="left info">
                <span class="prod_type">책</span>
                <p class="txt_nomal"><a href="/store/books/look.php?p_code=B5838079014">리얼 독일 [2024~2025]</a></p>
                <!-- 2차 상품 -->
                                                
                <!-- //2차 상품 -->
              </td>              
              <td>
                <p class="price">20,700원
              </p></td>
              <td>1</td>
              <td class="price2">20,700원</td>
            </tr>                      
                        
          </tbody>
        </table>  
      </div>
      
      <!-- 사용한빛 이코인, 사용쿠폰 -->
      <div class="table_area mt40">
        <table class="tbl_type_list5" border="0" cellspacing="0" summary="">
          <caption></caption>
          <colgroup>
          <col width="160px">
          <col width="410px">
          <col width="160px">
          <col width="">
          </colgroup>
          <tbody>
            <tr>
              <th>사용 한빛이코인</th>
              <td class="right">0원</td>
              <th>사용쿠폰</th>
              <td class="right">0원 </td>
            </tr>
                      </tbody>
        </table>
      </div>
      <!-- //사용한빛 이코인, 사용쿠폰 -->
      
      <!-- 장바구니 합계 -->
      <div class="cart_result_box">
        <ul>
          <li>주문상품 수량 :  <span> 2종 [2개]</span></li>
                      <li>예상 마일리지 적립 :  <span>2,075점</span></li>
                    
          <li>배송료 :  <span>0원</span></li>
          <li>총 주문 금액 :  <span class="price">37,350원</span></li>
        </ul>
      </div>
      <!-- //장바구니 합계 -->
      
    </div>
    <!-- //상품 정보 -->
    
      
    <!-- 주문,결제 최종 정보 영역 -->
    <div class="total_info">
      <!-- 주문 총액 정보 -->
      <dl class="total_order">
        <dt>주문상품 : </dt>
        <dd>총 2종 [2개]</dd>
        <dt>총 상품금액 : </dt>
        <dd>37,350원</dd>
        <dt>배송비 : </dt>
        <dd>0원</dd>
        <dt>할인금액 : </dt>
        <dd>원</dd>
      </dl>
      <!-- //주문 총액 정보 -->
      
      <!-- 최종 결제 정보 -->
      <dl class="total_payment">
        <dt><strong>최종 결제 금액 :</strong></dt>
        <dd><strong><span id="sum_t_price_show">37,350원</span></strong></dd>
        <dt>최종 적립 마일리지 :</dt>
                  <dd><span id="sum_st_mileage_show">2,075</span>점</dd>
              </dl>
      <!-- //최종 결제 정보 -->
      
      <!-- 결제하기 버튼 -->
      <label>
                  <button name="" type="submit" value="주문취소" class="btn_tracking_num2" onclick="cancel_infor_layer_open('layer_cancel_infor');return false;">주문취소</button>
              </label>
      <a name="invoiceTrack"></a>
             <a href="javascript:alert('[배송중] 단계일 때만 배송조회가 가능합니다.');" class="btn_tracking_num2">배송조회</a>
            <!-- //결제하기 버튼 -->
    </div>
    <!-- //주문,결제 최종 정보 영역 -->
    <br>
    
      
    <!-- 결제수단 - 신용카드 결제 시 -->
    <div class="cart_deposit_box_area">
      <table class="tbl_type_list5" border="0" cellspacing="0" summary="무통장 입금 시">
        <caption>무통장 입금 정보</caption>
        <colgroup>
        <col width="25%">
        <col width="25%">
        <col width="25%">
        <col width="25%">
        </colgroup>
        <thead>
          <tr>
            <th>결제방식</th>
            <th>금액</th>
            <th>결제일자</th>
            <th>거래명세서</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>무통장입금</td>
            <td class="right">37,350원</td>
            <td>2023.11.20</td>
            <td>
                        </td>
          </tr>
        </tbody>
      </table>
            <div class="cart_deposit_box">
        <ul class="deposit1">
          <li>입금은행 : 우리은행</li>
          <li class="line">|</li>
          <li>계좌번호 : 068-396373-13-001</li>
          <li class="line">|</li>
          <li>예금주 : 한빛미디어(주)</li>
        </ul>
        <ul class="deposit2">
          <li>입금자명 : 홍길동</li>
          <li class="line">|</li>
          <li>입금예정일 : 2023-11-21</li>
        </ul>
        
        <div class="myhanbit_tbox1">
          <p class="tbox_txt">무통장 입금은 해당계좌로 입금 시에만 입금확인이 되며, 주문이 진행됩니다.</p>
          <p class="tbox_txt">10일 이내 입금이 되지 않을 경우는 주문이 자동 취소됩니다.</p>
          <p class="tbox_txt">무통장입금은 주중 오전 11시, 오후 3시 두차례 입금확인 합니다(주말 입금확인 안됨).</p>
        </div>
      </div>
          </div>
    <!-- //결제수단 - 신용카드 결제 시 -->
    
    <div class="btn_area_cart">
      <a href="/myhanbit/order_history_list.html" class="btn_white2">목록보기</a>
    </div>
     
  </div>
	</section>
	
	<jsp:include page="../../include/footer.jsp" />
</body>
</html>