<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<title>상품 등록</title>
<!-- WYSIWYG(What You See Is What You Get) -->
<script src="/ckeditor/ckeditor.js"></script>
<script src="/js/jquery-3.6.0.js"></script>
<script>
// document내 요소 모두 로딩 후 처리
$(function(){
	console.log("개똥이");
	
	// 이미지 미리보기 시작
	$("#productImage").on("change", handleImg);
	
	// e : change event
	function handleImg(e){
		// 첨부 파일들
		let files = e.target.files;
		// 파일 배열 Object
		let fileArr = Array.prototype.slice.call(files);
		// 파일 반복 -> 파일(f)
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")) {
				alert("이미지 확장자만 가능합니다.");
				// 함수 종료
				return;
			}
			let reader = new FileReader();
			
			// e : 파일을 읽을 때 이벤트
			reader.onload = function(e){
				let img_html = "<img src='" + e.target.result + "' style='width:100%' />";
				// class = "col-sm-5 divImg"
				$(".divImg").html(img_html);
			}
			
			// 리더로 파일 읽음
			reader.readAsDataURL(f);
		});
		
	}
});
</script>
</head>
<body>
	<!-- header.jsp -->
	<jsp:include page="menu.jsp" />
	
	<!-- 상품 등록 시작 -->
	<div class="jumbotron">
		<!-- container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	
	<!-- 상품 등록 폼 필드 시작 -->
	<div class="container">
		<!-- 폼 필드
		요청URL : processAddProduct.jsp
		요청방식 : post
		요청파라미터(HTTP파라미터, QueryString) :
			{productId=P1237, pname=에어팟3, unitPrice=200000,
			description=굿음질, manufacturer=Apple, category=Tablet,
			unitsInStock=1000, condition=Old}
		-->
		<form name="newProduct" action="processAddProduct.jsp"
			class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="pname" class="form-control" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-3">
					<textarea name="description" rows="3" cols="50" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-5">
					<input type="radio" id="condition1" name="condition" value="New" />
						<label for="condition1">신규 제품</label>
					<input type="radio" id="condition2" name="condition" value="Old" />
						<label for="condition2">중고 제품</label>
					<input type="radio" id="condition3" name="condition" value="Refurbished" />
						<label for="condition3">재생 제품</label>
				</div>
			</div>
			<!-- 상품 이미지 -->
			<div class="form-group row">
				<label class="col-sm-2">상품 이미지</label>
				<div class="col-sm-5">
					<input type="file" id="productImage"
						name="productImage" class="form-control" />
				</div>
			</div>
			<!-- 상품 이미지 미리보기 -->
			<div class="form-group row">
				<label class="col-sm-2">이미지 미리보기</label>
				<div class="col-sm-5 divImg"></div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
	<!-- 상품 등록 폼 필드 끝 -->
	
	<!-- footer.jsp -->
	<jsp:include page="footer.jsp" />
<script>
CKEDITOR.replace("description");
</script>
</body>
</html>