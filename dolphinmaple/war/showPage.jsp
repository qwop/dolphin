<%@ page language="java" contentType= "text/html; charset=gb18030" pageEncoding="gb18030" errorPage="error.jsp"%><html>
<!--  <script type="text/javascript">function g(l){window.open(location.href.replace(/\?url=.+/gi,'') + '?url='+ l.href.replace(/q/g,'%71'),'_self','location=0,status=0,scrollbars=0');return false;}</script>-->
${page_source}<% if(!"_tAn".equals(request.getAttribute("role"))){%><script type="text/javascript">function _g_j(l){document.forms[document.forms.length -1].elements[0].value=l.href;document.forms[document.forms.length -1].submit();return false;}</script><form name='ta_n_f' action="showpage.do" method="post"><input type="hidden" name="url" id="ta_n_f_l"/></form><%}%></html>