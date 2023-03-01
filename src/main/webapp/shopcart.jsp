<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shopcart</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="css/font.css" type="text/css">
<link rel="stylesheet" href="css/shopcart.css" type="text/css">

<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
	rel="stylesheet" />
</head>


<body>
	<%@ include file="header.jsp"%>

	<div class="content_box">
		<div class="container">
			<div class="top">
				<div class="pro_box lay">
					<div>PRODUCT</div>
				</div>
				<div class="total_box lay">
					<div>Total Amount</div>
				</div>
				<div class="amount_box lay">
					<div>one Amount</div>
				</div>
				<div class="check_box lay">
					<div>CHECK</div>
				</div>
			</div>


			<div class="mid">
				<div class="item_box">
					<div class="product_item bc">
						<div class="img_box">
							<img src="img/shop-cart/jupiter1.png" alt="img" width="100%"
								height="100%">
						</div>
						<div class="title_box">{{ jupiter }}</div>
					</div>
					<div class="total_item bc">
						<div class="text_box">{{ datas.price }}</div>
					</div>
					<div class="amount_item bc">
						<div class="text_box">{{ 3000 }}</div>
					</div>
					<div class="check_item bc">
						<label class="check_icon_box"> <input type="checkbox"
							value="jupiter" name="selectedList">
							<div class="circle">
								<span class="material-symbols-outlined">&#xe876</span>
							</div>

						</label>
					</div>
				</div>


				<!-- 반복문으로 바꿀 영역 -->
				<div class="item_box">
					<div class="product_item bc">
						<div class="img_box">
							<img src="img/shop-cart/jupiter1.png" alt="img" width="100%"
								height="100%">
						</div>
						<div class="title_box">{{ moon }}</div>
					</div>
					<div class="total_item bc">
						<div class="text_box">{{ datas.price }}</div>
					</div>
					<div class="amount_item bc">
						<div class="text_box">{{ 1000 }}</div>
					</div>
					<div class="check_item bc">
						<label class="check_icon_box"> <input type="checkbox"
							value="moon" name="selectedList">
							<div class="circle">
								<span class="material-symbols-outlined">&#xe876</span>
							</div>
						</label>
					</div>
				</div>
				<div class="item_box">
					<div class="product_item bc">
						<div class="img_box">
							<img src="img/shop-cart/jupiter1.png" alt="img" width="100%"
								height="100%">
						</div>
						<div class="title_box">{{ earth }}</div>
					</div>
					<div class="total_item bc">
						<div class="text_box">{{ datas.price }}</div>
					</div>
					<div class="amount_item bc">
						<div class="text_box">{{ 1500 }}</div>
					</div>
					<div class="check_item bc">
						<label class="check_icon_box"> <input type="checkbox"
							value="earth" name="selectedList">
							<div class="circle">
								<span class="material-symbols-outlined">&#xe876</span>
							</div>
						</label>
					</div>
				</div>
				<div class="item_box">
					<div class="product_item bc">
						<div class="img_box">
							<img src="img/shop-cart/jupiter1.png" alt="img" width="100%"
								height="100%">
						</div>
						<div class="title_box">{{ sun }}</div>
					</div>
					<div class="total_item bc">
						<div class="text_box">{{ datas.price }}</div>
					</div>
					<div class="amount_item bc">
						<div class="text_box">{{ 2000 }}</div>
					</div>
					<div class="check_item bc">
						<label class="check_icon_box"> <input type="checkbox"
							value="sun" name="selectedList">
							<div class="circle">
								<span class="material-symbols-outlined">&#xe876</span>
							</div>
						</label>
					</div>
				</div>
				<div class="item_box">
					<div class="product_item bc">
						<div class="img_box">
							<img src="img/shop-cart/jupiter1.png" alt="img" width="100%"
								height="100%">
						</div>
						<div class="title_box">{{ mars }}</div>
					</div>
					<div class="total_item bc">
						<div class="text_box">{{ datas.price }}</div>
					</div>
					<div class="amount_item bc">
						<div class="text_box">{{ 4000 }}</div>
					</div>
					<div class="check_item bc">
						<label class="check_icon_box"> <input type="checkbox"
							value="mars" name="selectedList">
							<div class="circle">
								<span class="material-symbols-outlined">&#xe876</span>
							</div>
						</label>
					</div>
				</div>
				<div class="item_box">
					<div class="product_item bc">
						<div class="img_box">
							<img src="img/shop-cart/jupiter1.png" alt="img" width="100%"
								height="100%">
						</div>
						<div class="title_box">{{ zeus }}</div>
					</div>
					<div class="total_item bc">
						<div class="text_box">{{ datas.price }}</div>
					</div>
					<div class="amount_item bc">
						<div class="text_box">{{ 5000 }}</div>
					</div>
					<div class="check_item bc">
						<label class="check_icon_box"> 
							<input type="checkbox"
							value="zeus" name="selectedList">
							<div class="circle">
								<span class="material-symbols-outlined">&#xe876</span>
							</div>
						</label>
					</div>
				</div>
				<!-- 반복문으로 바꿀 영역 -->

			</div>


			<div class="bot">
				<input type="button" class="bot_left" disabled="disabled" value="삭제하기">
				<div class="bot_right">
					<div class="right">Total:</div>
					<div class="text_box2">{{ datas.price }}</div>
				</div>
			</div>
		</div>
	</div>

</body>

<script>


	
$(document).ready(function() {
	console.log('페이지 렌더링시 실행되는 함수');
	
	/* 체크박스가 클릭될 때 실행되는 함수 */
	 $(".check_icon_box").click(function() {
		 
		 /* 버튼 클릭시 색상 변환하는 함수 */
		 
		 let checkedItem = event.target;
		 console.log('event.target >>');
		 console.log(checkedItem);
		 
		 
		 console.log('형제 >>');
		 console.log(checkedItem.nextElementSibling);
		 
		
		 checkedItem.nextElementSibling.classList.toggle('checked');
		 
		 
		 /* 삭제하기 버튼 활성화 함수 */
		 let checkedLength = $("input[name=selectedList]:checked").length;//몇개 체크되었는지 변수

		 console.log(checkedLength);
		
		 if(checkedLength > 0){
			 console.log('삭제하기 버튼 활성화 될 예쩡')
			
			 $(".bot_left").css({"backgroundColor":"#000000","cursor":"pointer"});
      		 $(".delete").prop("disabled",false);
		 }
		 else{
		      $(".bot_left").css({"backgroundColor":"#D9D9D9","cursor":"auto"});
		      $(".delete").prop("disabled",true);
			 
		 }
		 
		 
		 /* if($("input[name=selectedList]").is(":checked")) {
			 $("input[name=selectedList]").prop("checked", true);
			 
			 $(".bot_left").css({"backgroundColor":"#000000","cursor":"pointer"});
      		 $(".bot_left").prop("disabled",false);
			 
		 } else {
      	   $("input[name=selectedList]").prop("checked", false);
      	$(".bot_left").css({"backgroundColor":"#D9D9D9","cursor":"auto"}).prop("disabled",true);

		 } */
	 });
	 
});


</script>



</html>