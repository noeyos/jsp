/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.90
 * Generated at: 2023-07-14 02:17:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.ProductRepository;
import vo.ProductVO;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1687487449961L));
    _jspx_dependants.put("jar:file:/C:/eclipse202006/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/JSPBook/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("dao.ProductRepository");
    _jspx_imports_classes.add("vo.ProductVO");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

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
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
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
      			"exceptionNoProductId.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	//싱글톤 : 메모리에 객체가 1회 생성. 전역 변수처럼 어디서든 공유해서 사용가능
	ProductRepository productDAO = ProductRepository.getInstance();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<!-- 링크 렐르 흐 -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"/css/bootstrap.min.css\">\r\n");
      out.write("<title>상품 상세 정보</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<!-- include 액션 태그 -->\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<!-- 상품 상세 시작 -->\r\n");
      out.write("	<div class=\"jumbotron\">\r\n");
      out.write("		<!-- container : 이 안에 내용이 있다 -->\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<h1 class=\"display-3\">상품정보</h1>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");

	//스크립틀릿
	//요청URI : product.jsp?=productId=P1234
	//요청URL : product.jsp
	//요청파라미터 : productId=P1234
	//요청방식 : get
	String productId = request.getParameter("productId");	//P1234
// 	out.print("productId : " + productId);
	
	//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1234'
	//productId 매개변수에 P1234, P1235, P1236가 할당될 경우 product객체에 정보가 존재
	//but, P0000이 할당될 경우 product객체는 null이 됨          
	ProductVO product = productDAO.getProductById(productId);
// 	out.print("<p>" + product + "</p>");	

      out.write('\r');
      out.write('\n');
      //  c:set
      org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
      boolean _jspx_th_c_005fset_005f0_reused = false;
      try {
        _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fset_005f0.setParent(null);
        // /product.jsp(45,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setVar("product");
        // /product.jsp(45,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setValue( product );
        int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
        if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
        _jspx_th_c_005fset_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
      }
      out.write("\r\n");
      out.write("	<!-- 내용 -->\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("		<!-- 1건의 상품. 1행(로우=레코드=튜플) -->\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<!-- 상품 이미지 -->\r\n");
      out.write("			<div class=\"col-md-5\"> \r\n");
      out.write("				<img src=\"/images/");
      out.print(product.getFilename());
      out.write("\"\r\n");
      out.write("						alt=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"\r\n");
      out.write("						title=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.pname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"\r\n");
      out.write("						style=\"width:100%;\">\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- 6크기의 1열(컬럼=필드=속성=어트리뷰트) -->\r\n");
      out.write("			<div class=\"col\">\r\n");
      out.write("				<h3>");
      out.print( product.getPname() );
      out.write("\r\n");
      out.write("				<a href=\"logout.jsp\" class=\"btn btn-sm btn-success pull-right\">logout</a>\r\n");
      out.write("					");
      out.write("\r\n");
      out.write("				</h3>\r\n");
      out.write("				\r\n");
      out.write("				<p>");
      out.print( product.getDescription() );
      out.write("</p>\r\n");
      out.write("				<p>\r\n");
      out.write("					<b>상품코드 :</b>\r\n");
      out.write("					<span class=\"badge badge-danger\">\r\n");
      out.write("						");
      out.print( product.getProductId() );
      out.write("\r\n");
      out.write("					</span>\r\n");
      out.write("				</p>\r\n");
      out.write("				<p><b>제조사 : </b>");
      out.print( product.getManufacturer() );
      out.write("</p>\r\n");
      out.write("				<p><b>분류 : </b>");
      out.print( product.getCategory() );
      out.write("</p>\r\n");
      out.write("				<p><b>재고 수 : </b>");
      out.print( product.getUnitsInStock() );
      out.write("</p>\r\n");
      out.write("				<p>\r\n");
      out.write("					<form name=\"addForm\" action=\"addCart.jsp?productId=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${product.productId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"\r\n");
      out.write("							method=\"post\">\r\n");
      out.write("						<!-- addToCart() : 핸들러 함수 -->\r\n");
      out.write("						<a href=\"#\" class=\"btn btn-primary\" onclick=\"addToCart()\">상품 주문 &raquo;</a>\r\n");
      out.write("						<a href=\"#\" class=\"btn btn-info\" onclick=\"addToCart()\">장바구니 &raquo;</a>\r\n");
      out.write("						<a href=\"products.jsp\" class=\"btn btn-secondary\">상품 목록 &raquo;</a>\r\n");
      out.write("					</form>	\r\n");
      out.write("				</p>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function addToCart() {\r\n");
      out.write("	console.log(\"개똥이\");\r\n");
      out.write("	\r\n");
      out.write("	if(confirm(\"상품을 장바구니에 추가하시겠습니까?\")) {\r\n");
      out.write("		console.log(\"true에 왔다\");\r\n");
      out.write("		//요청URL : addCart.jsp?id=P1234\r\n");
      out.write("		//<form name=\"addForm\"...\r\n");
      out.write("		document.addForm.submit();\r\n");
      out.write("	} else {\r\n");
      out.write("		console.log(\"false에 왔다\");\r\n");
      out.write("		alert(\"취소되었습니다.\")\r\n");
      out.write("		\r\n");
      out.write("	}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
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
