<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.util.Iterator"%>                             
<%@ page import="org.apache.commons.fileupload.DiskFileUpload"%>   
<%@ page import="java.util.List"%>                                 
<%@ page import="dao.ProductRepository"%>                          
<%@ page import="vo.ProductVO"%>                                   
<%@ page import="java.io.File"%>
<!-- 폼 필드
요청URL : processAddProduct.jsp
요청방식 : post
요청파라미터(HTTP파라미터, QueryString) :
	{productId=P1237, pname=에어팟3, unitPrice=200000,
	description=굿음질, manufacturer=Apple, category=Tablet,
	unitsInStock=1000, condition=Old}
-->
		
<%	//스크립틀릿
	//폼 페이지에서 입력된 데이터를 서버로 전송 시 한그링 깨지지 않도록 문자 인코딩 유형을 UTF-8로 하여
	//request 내장 객체의 모든 파라미터의 인코딩을 UTF-8로 처리
	request.setCharacterEncoding("UTF-8");
	//이미지 파일을 어디에 올릴건지
	String path = "C://eclipse202006//workspace//JSPBook//WebContent//images";
	//파일업로드 처리용 클래스
	DiskFileUpload upload = new DiskFileUpload();
	//환경설정
	upload.setSizeMax(1000000);	//최대 1M
	upload.setSizeThreshold(4096);	//1 * 1024 * 1024 => 1M
	upload.setRepositoryPath(path);	//임시저장(생략가능)
	//form데이터들을 items로 변환(파싱-의미분석, 구문분석)
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();	//열거형
	
	//폼 페이지에서 입력도니 값들을 얻어오기 위해서 request 내장 객체의 getParameter() 메소드를 작성
	//파라미터의 모든 값의 데이터 타입은 String타입!
	String productId     = ""; 
	String pname         = ""; 
	String unitPrice     = ""; 
	String description   = ""; 
	String manufacturer  = ""; 
	String category      = ""; 
	String unitsInStock  = ""; 
	String condition     = ""; 
	
	int price = 0;
	
	//폼 페이지에서 상품 재고 수가 입력되지 않은 경우 0으로, 입력된 경우 int형으로 변경
	//int타입의 허용 범위 : –2,147,483,648 ~ 2,147,483,647
	int stock = 0;
	
	String fileFieldName = "";
	String fileName = "";	 
	String contentType = "";  
	Long   fileSize = 0L; 	 
	
	while(params.hasNext()) {
		FileItem item = (FileItem)params.next();	//다음이 있으면 데이터를 가져와라
		if(item.isFormField()) {  //일반항목
			//item : {productId=P1234}
			String name = item.getFieldName();
			//productId -> pname -> unitPrice -> description
			//	-> manufacturer -> category -> unitsInStock -> condition
			if(name.equals("productId")) {
				productId = item.getString("utf-8"); //P1234
			} else if(name.equals("pname")) {
				pname = item.getString("utf-8"); //에어팟3
			} else if(name.equals("unitPrice")) {
				unitPrice = item.getString("utf-8"); //200000
				price = Integer.parseInt(unitPrice);
			} else if(name.equals("description")) {
				description = item.getString("utf-8"); //굿음질
			} else if(name.equals("manufacturer")) {
				manufacturer = item.getString("utf-8"); //Apple
			} else if(name.equals("category")) {
				category = item.getString("utf-8"); //Tablet
			} else if(name.equals("unitsInStock")) {
				unitsInStock = item.getString("utf-8"); //1000
				stock = Integer.parseInt(unitsInStock);
			} else if(name.equals("condition")) {
				condition = item.getString("utf-8"); //Old
			}

		} else {  //파일객체
			fileFieldName = item.getFieldName(); //productImage
			fileName 	  = item.getName(); //(파일 저장된 경로)\\~~~.jpg
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			contentType   = item.getContentType();	//MIME타입 : images/jpeg
			fileSize 	  = item.getSize();
			
			// 설계 => 복사될 위치, 파일명(결합연산자)
			File file = new File(path + "\\" + fileName);
			//설계대로 복사 실행
			item.write(file);
		}
		
	}
	
	//넘어온 파라미터값들을 -> ProductVO productVO 객체에 setting 해보자
	ProductVO productVO = new ProductVO();
	productVO.setProductId(productId);
	productVO.setPname(pname);
	productVO.setUnitPrice(price);
	productVO.setDescription(description);
	productVO.setManufacturer(manufacturer);
	productVO.setCategory(category);
	productVO.setUnitsInStock(stock);
	productVO.setCondition(condition);
	productVO.setFilename(fileName);  //P1237.jpg
	
	out.print("productVO : " + productVO);
	
	ProductRepository dao = ProductRepository.getInstance();
	//폼 페이지에서 입력된 데이터를 저장하도록 ProductRepository 클래스의 addProduct() 메소드를 호출
	dao.addProduct(productVO);
	//모든 상품 목록을 리턴
	List<ProductVO> listOfProducts = dao.getAllProducts();
	//향상된 for문
	for(ProductVO vo :listOfProducts) {
		out.print("<p>" + vo + "</p>");
	}
	//목록으로 강제 이동. response 내장 객체의 sendRedirect()
	response.sendRedirect("products.jsp");
	
%>