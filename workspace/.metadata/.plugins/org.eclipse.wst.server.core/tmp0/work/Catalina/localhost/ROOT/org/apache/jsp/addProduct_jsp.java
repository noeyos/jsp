/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.90
 * Generated at: 2023-07-05 00:48:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"/css/bootstrap.min.css\">\r\n");
      out.write("<title>상품 등록</title>\r\n");
      out.write("<!-- WYSIWYG(What You See Is What You Get) -->\r\n");
      out.write("<script src=\"/ckeditor/ckeditor.js\"></script>\r\n");
      out.write("<script src=\"/js/jquery-3.6.0.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("// document내 요소 모두 로딩 후 처리\r\n");
      out.write("$(function(){\r\n");
      out.write("	console.log(\"개똥이\");\r\n");
      out.write("	\r\n");
      out.write("	// 이미지 미리보기 시작\r\n");
      out.write("	$(\"#productImage\").on(\"change\", handleImg);\r\n");
      out.write("	\r\n");
      out.write("	// e : change event\r\n");
      out.write("	function handleImg(e){\r\n");
      out.write("		// 첨부 파일들\r\n");
      out.write("		let files = e.target.files;\r\n");
      out.write("		// 파일 배열 Object\r\n");
      out.write("		let fileArr = Array.prototype.slice.call(files);\r\n");
      out.write("		// 파일 반복 -> 파일(f)\r\n");
      out.write("		fileArr.forEach(function(f){\r\n");
      out.write("			if(!f.type.match(\"image.*\")) {\r\n");
      out.write("				alert(\"이미지 확장자만 가능합니다.\");\r\n");
      out.write("				// 함수 종료\r\n");
      out.write("				return;\r\n");
      out.write("			}\r\n");
      out.write("			let reader = new FileReader();\r\n");
      out.write("			\r\n");
      out.write("			// e : 파일을 읽을 때 이벤트\r\n");
      out.write("			reader.onload = function(e){\r\n");
      out.write("				let img_html = \"<img src='\" + e.target.result + \"' style='width:100%' />\";\r\n");
      out.write("				// class = \"col-sm-5 divImg\"\r\n");
      out.write("				$(\".divImg\").html(img_html);\r\n");
      out.write("			}\r\n");
      out.write("			\r\n");
      out.write("			// 리더로 파일 읽음\r\n");
      out.write("			reader.readAsDataURL(f);\r\n");
      out.write("		});\r\n");
      out.write("		\r\n");
      out.write("	}\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<!-- header.jsp -->\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<!-- 상품 등록 시작 -->\r\n");
      out.write("	<div class=\"jumbotron\">\r\n");
      out.write("		<!-- container : 이 안에 내용있다 -->\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<h1 class=\"display-3\">상품 등록</h1>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("	<!-- 상품 등록 폼 필드 시작 -->\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("		<!-- 폼 필드\r\n");
      out.write("		요청URL : processAddProduct.jsp\r\n");
      out.write("		요청방식 : post\r\n");
      out.write("		요청파라미터(HTTP파라미터, QueryString) :\r\n");
      out.write("			{productId=P1237, pname=에어팟3, unitPrice=200000,\r\n");
      out.write("			description=굿음질, manufacturer=Apple, category=Tablet,\r\n");
      out.write("			unitsInStock=1000, condition=Old}\r\n");
      out.write("		-->\r\n");
      out.write("		<form name=\"newProduct\" action=\"processAddProduct.jsp\"\r\n");
      out.write("			class=\"form-horizontal\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">상품 코드</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" name=\"productId\" class=\"form-control\" required>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">상품명</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" name=\"pname\" class=\"form-control\" required>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">가격</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" name=\"unitPrice\" class=\"form-control\" required>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">상세 정보</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<textarea name=\"description\" rows=\"3\" cols=\"50\" class=\"form-control\"></textarea>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">제조사</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" name=\"manufacturer\" class=\"form-control\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">분류</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" name=\"category\" class=\"form-control\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">재고 수</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" name=\"unitsInStock\" class=\"form-control\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">상태</label>\r\n");
      out.write("				<div class=\"col-sm-5\">\r\n");
      out.write("					<input type=\"radio\" id=\"condition1\" name=\"condition\" value=\"New\" />\r\n");
      out.write("						<label for=\"condition1\">신규 제품</label>\r\n");
      out.write("					<input type=\"radio\" id=\"condition2\" name=\"condition\" value=\"Old\" />\r\n");
      out.write("						<label for=\"condition2\">중고 제품</label>\r\n");
      out.write("					<input type=\"radio\" id=\"condition3\" name=\"condition\" value=\"Refurbished\" />\r\n");
      out.write("						<label for=\"condition3\">재생 제품</label>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- 상품 이미지 -->\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">상품 이미지</label>\r\n");
      out.write("				<div class=\"col-sm-5\">\r\n");
      out.write("					<input type=\"file\" id=\"productImage\"\r\n");
      out.write("						name=\"productImage\" class=\"form-control\" />\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- 상품 이미지 미리보기 -->\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">이미지 미리보기</label>\r\n");
      out.write("				<div class=\"col-sm-5 divImg\"></div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<div class=\"col-sm-offset-2 col-sm-10\">\r\n");
      out.write("					<input type=\"submit\" class=\"btn btn-primary\" value=\"등록\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</form>\r\n");
      out.write("	</div>\r\n");
      out.write("	<!-- 상품 등록 폼 필드 끝 -->\r\n");
      out.write("	\r\n");
      out.write("	<!-- footer.jsp -->\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("CKEDITOR.replace(\"description\");\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
