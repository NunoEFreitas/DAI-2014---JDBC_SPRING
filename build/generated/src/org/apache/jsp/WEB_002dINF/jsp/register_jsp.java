package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/resources/include/templateAdministracao.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_form_input_path_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_url_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_form_input_path_name_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_form_form_onsubmit_modelAttribute_method_id_action;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_form_select_path_name;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_form_option_value;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_form_input_path_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_url_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_form_input_path_name_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_form_form_onsubmit_modelAttribute_method_id_action = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_form_select_path_name = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_form_option_value = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_form_input_path_nobody.release();
    _jspx_tagPool_c_url_value_nobody.release();
    _jspx_tagPool_form_input_path_name_nobody.release();
    _jspx_tagPool_form_form_onsubmit_modelAttribute_method_id_action.release();
    _jspx_tagPool_form_select_path_name.release();
    _jspx_tagPool_form_option_value.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("        <Meta  http-equiv = \"X-UA-Compatible\"  content = \"IE = borda\" >\r\n");
      out.write("\t<title>Login - Sistema de Informação - SCB</title>\r\n");
      out.write("\t      \r\n");
      out.write("        \r\n");
      out.write("        <!-- Bootstrap core CSS -->\r\n");
      out.write("        <link href=\"");
      if (_jspx_meth_c_url_0(_jspx_page_context))
        return;
      out.write("\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("       <script src=\"");
      if (_jspx_meth_c_url_1(_jspx_page_context))
        return;
      out.write("\"></script>\r\n");
      out.write("        <script src=\"");
      if (_jspx_meth_c_url_2(_jspx_page_context))
        return;
      out.write("\"></script>\r\n");
      out.write("           <script>\r\n");
      out.write("            $(document).ready()(function() {\r\n");
      out.write("\r\n");
      out.write("                $('#registar').validate({\r\n");
      out.write("                    rules: {\r\n");
      out.write("                        pass: {required: true},\r\n");
      out.write("                        nome: {required: true}},\r\n");
      out.write("                    messages: {\r\n");
      out.write("                        pass: {required: 'Este campo é de preenchimento obrigatório!'},\r\n");
      out.write("                        nome: {required: 'Este campo é de preenchimento obrigatório!'} },\r\n");
      out.write("//\t\t\t\t\temail:{ required: 'Este campo é de preenchimento obrigatório!', remote: 'O E-mail inserido já existe!' },\r\n");
      out.write("//                                                 Nif:{ required: 'Este campo é de preenchimento obrigatório' remote: 'O E-mail inserido já existe!' }},\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("            \r\n");
      out.write("            function validacao() {\r\n");
      out.write("                alert(\"oooo\")\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("  \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <title>Sistema de Informação - SBC</title>\r\n");
      out.write("        <link href=\"");
      if (_jspx_meth_c_url_3(_jspx_page_context))
        return;
      out.write("\" rel=\"stylesheet\"  type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("            <div id=\"leftcolumn\"><img src=\"");
      if (_jspx_meth_c_url_4(_jspx_page_context))
        return;
      out.write("\" /> </div>\r\n");
      out.write("            <div id=\"rightcolumn\">\r\n");
      out.write("                <div id='cssmenu'>\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li class='active'><a href='#'><span>Administração</span></a></li>\r\n");
      out.write("                        <li class='has-sub'><a href='register'><span>Registar Atleta</span></a>\r\n");
      out.write("                        <li class='has-sub'><a href='#'><span>Modificar Atleta</span></a>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><a href='#'><span>Ativar/Desativar</span></a></li>\r\n");
      out.write("                                <li class=\"last\"><a href=\"#\"><span>AlterarDados</span></a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>  \r\n");
      out.write("                        <li class='has-sub'><a href='#'><span>Visualizar Atleta</span></a>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><a href='#'><span>VisualizarHistóricoAtleta</span></a></li>\r\n");
      out.write("                                <li class=\"last\"><a href=\"userList\"><span>VisualizarDadosAtleta</span></a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>  \r\n");
      out.write("                    </ul>\r\n");
      out.write("            \r\n");
      out.write("                    <br>\r\n");
      out.write("                    <br>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>                                \t\t");
      out.write("\r\n");
      out.write("             \r\n");
      out.write("        <!-- Page content -->\r\n");
      out.write("       \r\n");
      out.write("             <h1> Registar  </h1>\r\n");
      out.write("                \r\n");
      out.write("          \r\n");
      out.write("                   \r\n");
      out.write("             ");
      //  form:form
      org.springframework.web.servlet.tags.form.FormTag _jspx_th_form_form_0 = (org.springframework.web.servlet.tags.form.FormTag) _jspx_tagPool_form_form_onsubmit_modelAttribute_method_id_action.get(org.springframework.web.servlet.tags.form.FormTag.class);
      _jspx_th_form_form_0.setPageContext(_jspx_page_context);
      _jspx_th_form_form_0.setParent(null);
      _jspx_th_form_form_0.setId("registar");
      _jspx_th_form_form_0.setMethod("post");
      _jspx_th_form_form_0.setAction("/insereutilizador");
      _jspx_th_form_form_0.setModelAttribute("utilizador");
      _jspx_th_form_form_0.setOnsubmit("return validacao();");
      int[] _jspx_push_body_count_form_form_0 = new int[] { 0 };
      try {
        int _jspx_eval_form_form_0 = _jspx_th_form_form_0.doStartTag();
        if (_jspx_eval_form_form_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("                 <table>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Nome :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Password :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("\r\n");
            out.write("                         <td>Data de Nascimento :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Morada :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Sexo :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Telefone :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_5((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Email :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_6((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Altura :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_7((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Peso :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_8((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Salto Vertical :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_9((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Velocidade Deslocamento :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_10((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Alcance Ataque :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_11((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Alcance Bloco :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_12((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Exames Clinicos :</td>\r\n");
            out.write("                         <td>");
            if (_jspx_meth_form_input_13((javax.servlet.jsp.tagext.JspTag) _jspx_th_form_form_0, _jspx_page_context, _jspx_push_body_count_form_form_0))
              return;
            out.write("</td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Perfil :</td>\r\n");
            out.write("                         <td>\r\n");
            out.write("                             ");
            //  form:select
            org.springframework.web.servlet.tags.form.SelectTag _jspx_th_form_select_0 = (org.springframework.web.servlet.tags.form.SelectTag) _jspx_tagPool_form_select_path_name.get(org.springframework.web.servlet.tags.form.SelectTag.class);
            _jspx_th_form_select_0.setPageContext(_jspx_page_context);
            _jspx_th_form_select_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
            _jspx_th_form_select_0.setPath("idPerfil");
            _jspx_th_form_select_0.setDynamicAttribute(null, "name", new String("idPerfil"));
            int[] _jspx_push_body_count_form_select_0 = new int[] { 0 };
            try {
              int _jspx_eval_form_select_0 = _jspx_th_form_select_0.doStartTag();
              if (_jspx_eval_form_select_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                do {
                  out.write("\r\n");
                  out.write("                                 ");
                  //  c:forEach
                  org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
                  _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
                  _jspx_th_c_forEach_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_select_0);
                  _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${map.lp}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
                  _jspx_th_c_forEach_0.setVar("lp");
                  int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
                  try {
                    int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
                    if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                      do {
                        out.write("\r\n");
                        out.write("                                     ");
                        //  form:option
                        org.springframework.web.servlet.tags.form.OptionTag _jspx_th_form_option_0 = (org.springframework.web.servlet.tags.form.OptionTag) _jspx_tagPool_form_option_value.get(org.springframework.web.servlet.tags.form.OptionTag.class);
                        _jspx_th_form_option_0.setPageContext(_jspx_page_context);
                        _jspx_th_form_option_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
                        _jspx_th_form_option_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lp.idPerfil}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
                        int[] _jspx_push_body_count_form_option_0 = new int[] { 0 };
                        try {
                          int _jspx_eval_form_option_0 = _jspx_th_form_option_0.doStartTag();
                          if (_jspx_eval_form_option_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                            if (_jspx_eval_form_option_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
                              out = _jspx_page_context.pushBody();
                              _jspx_push_body_count_form_option_0[0]++;
                              _jspx_th_form_option_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
                              _jspx_th_form_option_0.doInitBody();
                            }
                            do {
                              out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lp.designacao}", java.lang.String.class, (PageContext)_jspx_page_context, null));
                              int evalDoAfterBody = _jspx_th_form_option_0.doAfterBody();
                              if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                              break;
                            } while (true);
                            if (_jspx_eval_form_option_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
                              out = _jspx_page_context.popBody();
                              _jspx_push_body_count_form_option_0[0]--;
                          }
                          if (_jspx_th_form_option_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                            return;
                          }
                        } catch (Throwable _jspx_exception) {
                          while (_jspx_push_body_count_form_option_0[0]-- > 0)
                            out = _jspx_page_context.popBody();
                          _jspx_th_form_option_0.doCatch(_jspx_exception);
                        } finally {
                          _jspx_th_form_option_0.doFinally();
                          _jspx_tagPool_form_option_value.reuse(_jspx_th_form_option_0);
                        }
                        out.write("\r\n");
                        out.write("                                 ");
                        int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
                        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                          break;
                      } while (true);
                    }
                    if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                      return;
                    }
                  } catch (Throwable _jspx_exception) {
                    while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
                      out = _jspx_page_context.popBody();
                    _jspx_th_c_forEach_0.doCatch(_jspx_exception);
                  } finally {
                    _jspx_th_c_forEach_0.doFinally();
                    _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
                  }
                  out.write("\r\n");
                  out.write("                             ");
                  int evalDoAfterBody = _jspx_th_form_select_0.doAfterBody();
                  if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                    break;
                } while (true);
              }
              if (_jspx_th_form_select_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                return;
              }
            } catch (Throwable _jspx_exception) {
              while (_jspx_push_body_count_form_select_0[0]-- > 0)
                out = _jspx_page_context.popBody();
              _jspx_th_form_select_0.doCatch(_jspx_exception);
            } finally {
              _jspx_th_form_select_0.doFinally();
              _jspx_tagPool_form_select_path_name.reuse(_jspx_th_form_select_0);
            }
            out.write("\r\n");
            out.write("                         </td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>Escalao :</td>\r\n");
            out.write("                         <td>\r\n");
            out.write("                             ");
            //  form:select
            org.springframework.web.servlet.tags.form.SelectTag _jspx_th_form_select_1 = (org.springframework.web.servlet.tags.form.SelectTag) _jspx_tagPool_form_select_path_name.get(org.springframework.web.servlet.tags.form.SelectTag.class);
            _jspx_th_form_select_1.setPageContext(_jspx_page_context);
            _jspx_th_form_select_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
            _jspx_th_form_select_1.setPath("idEscalao");
            _jspx_th_form_select_1.setDynamicAttribute(null, "name", new String("idEscalao"));
            int[] _jspx_push_body_count_form_select_1 = new int[] { 0 };
            try {
              int _jspx_eval_form_select_1 = _jspx_th_form_select_1.doStartTag();
              if (_jspx_eval_form_select_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                do {
                  out.write("\r\n");
                  out.write("                                 ");
                  //  c:forEach
                  org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
                  _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
                  _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_select_1);
                  _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${map.li}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
                  _jspx_th_c_forEach_1.setVar("li");
                  int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
                  try {
                    int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
                    if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                      do {
                        out.write("\r\n");
                        out.write("                                     ");
                        //  form:option
                        org.springframework.web.servlet.tags.form.OptionTag _jspx_th_form_option_1 = (org.springframework.web.servlet.tags.form.OptionTag) _jspx_tagPool_form_option_value.get(org.springframework.web.servlet.tags.form.OptionTag.class);
                        _jspx_th_form_option_1.setPageContext(_jspx_page_context);
                        _jspx_th_form_option_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
                        _jspx_th_form_option_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${li.idEscalao}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
                        int[] _jspx_push_body_count_form_option_1 = new int[] { 0 };
                        try {
                          int _jspx_eval_form_option_1 = _jspx_th_form_option_1.doStartTag();
                          if (_jspx_eval_form_option_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                            if (_jspx_eval_form_option_1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
                              out = _jspx_page_context.pushBody();
                              _jspx_push_body_count_form_option_1[0]++;
                              _jspx_th_form_option_1.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
                              _jspx_th_form_option_1.doInitBody();
                            }
                            do {
                              out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${li.designacao}", java.lang.String.class, (PageContext)_jspx_page_context, null));
                              int evalDoAfterBody = _jspx_th_form_option_1.doAfterBody();
                              if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                              break;
                            } while (true);
                            if (_jspx_eval_form_option_1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
                              out = _jspx_page_context.popBody();
                              _jspx_push_body_count_form_option_1[0]--;
                          }
                          if (_jspx_th_form_option_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                            return;
                          }
                        } catch (Throwable _jspx_exception) {
                          while (_jspx_push_body_count_form_option_1[0]-- > 0)
                            out = _jspx_page_context.popBody();
                          _jspx_th_form_option_1.doCatch(_jspx_exception);
                        } finally {
                          _jspx_th_form_option_1.doFinally();
                          _jspx_tagPool_form_option_value.reuse(_jspx_th_form_option_1);
                        }
                        out.write("\r\n");
                        out.write("                                 ");
                        int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
                        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                          break;
                      } while (true);
                    }
                    if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                      return;
                    }
                  } catch (Throwable _jspx_exception) {
                    while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
                      out = _jspx_page_context.popBody();
                    _jspx_th_c_forEach_1.doCatch(_jspx_exception);
                  } finally {
                    _jspx_th_c_forEach_1.doFinally();
                    _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
                  }
                  out.write("\r\n");
                  out.write("                             ");
                  int evalDoAfterBody = _jspx_th_form_select_1.doAfterBody();
                  if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                    break;
                } while (true);
              }
              if (_jspx_th_form_select_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                return;
              }
            } catch (Throwable _jspx_exception) {
              while (_jspx_push_body_count_form_select_1[0]-- > 0)
                out = _jspx_page_context.popBody();
              _jspx_th_form_select_1.doCatch(_jspx_exception);
            } finally {
              _jspx_th_form_select_1.doFinally();
              _jspx_tagPool_form_select_path_name.reuse(_jspx_th_form_select_1);
            }
            out.write("\r\n");
            out.write("                         </td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("\r\n");
            out.write("                     <tr>\r\n");
            out.write("                         <td>&nbsp;</td>\r\n");
            out.write("                         <td><input type=\"submit\" value=\"Guardar\" /></td>\r\n");
            out.write("                     </tr>\r\n");
            out.write("\r\n");
            out.write("                 </table>\r\n");
            out.write("             ");
            int evalDoAfterBody = _jspx_th_form_form_0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_form_form_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_form_form_0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_form_form_0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_form_form_0.doFinally();
        _jspx_tagPool_form_form_onsubmit_modelAttribute_method_id_action.reuse(_jspx_th_form_form_0);
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_url_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_0.setPageContext(_jspx_page_context);
    _jspx_th_c_url_0.setParent(null);
    _jspx_th_c_url_0.setValue("/resources/css/bootstrap.css");
    int _jspx_eval_c_url_0 = _jspx_th_c_url_0.doStartTag();
    if (_jspx_th_c_url_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_0);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_0);
    return false;
  }

  private boolean _jspx_meth_c_url_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_1 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_1.setPageContext(_jspx_page_context);
    _jspx_th_c_url_1.setParent(null);
    _jspx_th_c_url_1.setValue("/resources/js/jquery.validate.js");
    int _jspx_eval_c_url_1 = _jspx_th_c_url_1.doStartTag();
    if (_jspx_th_c_url_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_1);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_1);
    return false;
  }

  private boolean _jspx_meth_c_url_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_2 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_2.setPageContext(_jspx_page_context);
    _jspx_th_c_url_2.setParent(null);
    _jspx_th_c_url_2.setValue("/resources/js/jquery.min.js");
    int _jspx_eval_c_url_2 = _jspx_th_c_url_2.doStartTag();
    if (_jspx_th_c_url_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_2);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_2);
    return false;
  }

  private boolean _jspx_meth_c_url_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_3 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_3.setPageContext(_jspx_page_context);
    _jspx_th_c_url_3.setParent(null);
    _jspx_th_c_url_3.setValue("/resources/css/dropdown.css");
    int _jspx_eval_c_url_3 = _jspx_th_c_url_3.doStartTag();
    if (_jspx_th_c_url_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_3);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_3);
    return false;
  }

  private boolean _jspx_meth_c_url_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_4 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_4.setPageContext(_jspx_page_context);
    _jspx_th_c_url_4.setParent(null);
    _jspx_th_c_url_4.setValue("/resources/images/braga.jpg");
    int _jspx_eval_c_url_4 = _jspx_th_c_url_4.doStartTag();
    if (_jspx_th_c_url_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_4);
      return true;
    }
    _jspx_tagPool_c_url_value_nobody.reuse(_jspx_th_c_url_4);
    return false;
  }

  private boolean _jspx_meth_form_input_0(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_0 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_name_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_0.setPageContext(_jspx_page_context);
    _jspx_th_form_input_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_0.setDynamicAttribute(null, "name", new String("nome"));
    _jspx_th_form_input_0.setPath("nome");
    int[] _jspx_push_body_count_form_input_0 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_0 = _jspx_th_form_input_0.doStartTag();
      if (_jspx_th_form_input_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_0.doFinally();
      _jspx_tagPool_form_input_path_name_nobody.reuse(_jspx_th_form_input_0);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_1(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_1 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_name_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_1.setPageContext(_jspx_page_context);
    _jspx_th_form_input_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_1.setDynamicAttribute(null, "name", new String("pass"));
    _jspx_th_form_input_1.setPath("password");
    int[] _jspx_push_body_count_form_input_1 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_1 = _jspx_th_form_input_1.doStartTag();
      if (_jspx_th_form_input_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_1.doFinally();
      _jspx_tagPool_form_input_path_name_nobody.reuse(_jspx_th_form_input_1);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_2(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_2 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_2.setPageContext(_jspx_page_context);
    _jspx_th_form_input_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_2.setPath("dataNascimento");
    int[] _jspx_push_body_count_form_input_2 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_2 = _jspx_th_form_input_2.doStartTag();
      if (_jspx_th_form_input_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_2.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_2);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_3(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_3 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_3.setPageContext(_jspx_page_context);
    _jspx_th_form_input_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_3.setPath("morada");
    int[] _jspx_push_body_count_form_input_3 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_3 = _jspx_th_form_input_3.doStartTag();
      if (_jspx_th_form_input_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_3.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_3);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_4(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_4 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_4.setPageContext(_jspx_page_context);
    _jspx_th_form_input_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_4.setPath("sexo");
    int[] _jspx_push_body_count_form_input_4 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_4 = _jspx_th_form_input_4.doStartTag();
      if (_jspx_th_form_input_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_4.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_4);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_5(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_5 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_5.setPageContext(_jspx_page_context);
    _jspx_th_form_input_5.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_5.setPath("telefone");
    int[] _jspx_push_body_count_form_input_5 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_5 = _jspx_th_form_input_5.doStartTag();
      if (_jspx_th_form_input_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_5.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_5);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_6(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_6 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_6.setPageContext(_jspx_page_context);
    _jspx_th_form_input_6.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_6.setPath("email");
    int[] _jspx_push_body_count_form_input_6 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_6 = _jspx_th_form_input_6.doStartTag();
      if (_jspx_th_form_input_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_6[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_6.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_6.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_6);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_7(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_7 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_7.setPageContext(_jspx_page_context);
    _jspx_th_form_input_7.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_7.setPath("altura");
    int[] _jspx_push_body_count_form_input_7 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_7 = _jspx_th_form_input_7.doStartTag();
      if (_jspx_th_form_input_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_7[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_7.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_7.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_7);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_8(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_8 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_8.setPageContext(_jspx_page_context);
    _jspx_th_form_input_8.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_8.setPath("peso");
    int[] _jspx_push_body_count_form_input_8 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_8 = _jspx_th_form_input_8.doStartTag();
      if (_jspx_th_form_input_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_8[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_8.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_8.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_8);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_9(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_9 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_9.setPageContext(_jspx_page_context);
    _jspx_th_form_input_9.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_9.setPath("saltoVertical");
    int[] _jspx_push_body_count_form_input_9 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_9 = _jspx_th_form_input_9.doStartTag();
      if (_jspx_th_form_input_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_9[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_9.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_9.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_9);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_10(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_10 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_10.setPageContext(_jspx_page_context);
    _jspx_th_form_input_10.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_10.setPath("velocidadeDeslocamento");
    int[] _jspx_push_body_count_form_input_10 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_10 = _jspx_th_form_input_10.doStartTag();
      if (_jspx_th_form_input_10.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_10[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_10.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_10.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_10);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_11(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_11 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_11.setPageContext(_jspx_page_context);
    _jspx_th_form_input_11.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_11.setPath("alcanceAtaque");
    int[] _jspx_push_body_count_form_input_11 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_11 = _jspx_th_form_input_11.doStartTag();
      if (_jspx_th_form_input_11.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_11[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_11.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_11.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_11);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_12(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_12 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_12.setPageContext(_jspx_page_context);
    _jspx_th_form_input_12.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_12.setPath("alcanceBloco");
    int[] _jspx_push_body_count_form_input_12 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_12 = _jspx_th_form_input_12.doStartTag();
      if (_jspx_th_form_input_12.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_12[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_12.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_12.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_12);
    }
    return false;
  }

  private boolean _jspx_meth_form_input_13(javax.servlet.jsp.tagext.JspTag _jspx_th_form_form_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_form_form_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:input
    org.springframework.web.servlet.tags.form.InputTag _jspx_th_form_input_13 = (org.springframework.web.servlet.tags.form.InputTag) _jspx_tagPool_form_input_path_nobody.get(org.springframework.web.servlet.tags.form.InputTag.class);
    _jspx_th_form_input_13.setPageContext(_jspx_page_context);
    _jspx_th_form_input_13.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_form_form_0);
    _jspx_th_form_input_13.setPath("examesClinicos");
    int[] _jspx_push_body_count_form_input_13 = new int[] { 0 };
    try {
      int _jspx_eval_form_input_13 = _jspx_th_form_input_13.doStartTag();
      if (_jspx_th_form_input_13.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_form_input_13[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_form_input_13.doCatch(_jspx_exception);
    } finally {
      _jspx_th_form_input_13.doFinally();
      _jspx_tagPool_form_input_path_nobody.reuse(_jspx_th_form_input_13);
    }
    return false;
  }
}
