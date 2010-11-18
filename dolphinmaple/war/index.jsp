<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>GetURL create by t</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="author" content="tan">
		<meta http-equiv="keywords" content="geturl,tan,showpage,geturl,search,includemain,capture,screen,escape,bookmark">
		<meta http-equiv="description" content="geturl for the website">
		<link rel="stylesheet" href="css/idx.css">
		<script type="text/javascript" src="jslib/idx.js"></script>
	</head>
	<body> 
		<%Cookie[] cs = request.getCookies();
			if (cs != null) {
				for (Cookie c : cs) {
					if ("username".equalsIgnoreCase(c.getName())) {
					%><input type="hidden" id="t_u" value="<%=c.getValue()%>"><%}	
					if ("password".equalsIgnoreCase(c.getName())) {%><input type="hidden" id="t_p" value="<%=c.getValue()%>"><%}
				}
			}%>
		<% if (request.getAttribute("source") != null) request.setAttribute("source", null);%>
		<%if (request.getAttribute("page_source") != null)request.setAttribute("page_source", null);%>
<center>
<div id="myContent" class="myContent" >
			<h1 id="title" onmouseover="this.style.color = '#CCFFFF'"
				onmouseout="this.style.color = '#FFFFCC'">
				Get url create by t ...
			</h1>
			
			<form action="geturl.do" method="post">
				<div class="error" id="error"></div>
				<table id="commander" cellspacing="0" cellpadding="0" border="1">
					<tr>
						<th align="left">
							请输入网址:
						</th>
						<td colspan="2">
							<input type="text" id="url" name="url" value="" size="50" ondblclick="createTip();" class="txtout">
							<!-- 
							<div style="display: none;" class="webpages" id="webpages">
								<a href="#qq">qq</a>
								<a href="#baidu">baidu</a>
								<a href="#google">google</a>
							</div>
							-->
							<span onclick="getSuffix(this)"><span id="replacement"
								onmouseover="this.style.backgroundColor = '#FF00FF'"
								onmouseout="this.style.backgroundColor = '#CCFF00'">^_^</span></span>
							<input type='radio' name='sel' id='selAll' onclick='selectA()' ><label for='selAll'>全选</label>
							<input type='radio' name='sel' id='revAll' onclick='reverseA()' ><label for='revAll'>反选</label>
						</td>
					</tr>
					<tr>
						<th align="left">
							协议:
						</th>
						<td>
							<input name="protocols" type="checkbox" id="http" value="http">
							<label for="http">http</label>
							<input name="protocols" type="checkbox" id="https" value="https">
							<label for="http">https</label>
							<input name="protocols" type="checkbox" id="ftp" value="ftp">
							<label for="ftp">ftp</label>
							<input name="protocols" type="checkbox" id="thunder"
								value="thunder">
							<label for="thunder">thunder</label>
							<input name="protocols" type="checkbox" id="mms" value="mms">
							<label for="mms">mms</label>
							<input name="protocols" type="checkbox" id="smtp" value="smtp">
							<label for="smtp">smtp</label>
						</td>
					</tr>
					<tr>
						<th align="left">
							后缀:
						</th>
						<td>
							<input name="suffixs" type="checkbox" id="gif" value="gif">
							<label for="gif">gif</label>
							<input name="suffixs" type="checkbox" id="jpg" value="jpg">
							<label for="jpg">jpg</label>
							<input name="suffixs" type="checkbox" id="wmv" value="wmv">
							<label for="wmv">wmv</label>
							<input name="suffixs" type="checkbox" id="rm" value="rm">
							<label for="rm">rm</label>
							<input name="suffixs" type="checkbox" id="mp3" value="mp3">
							<label for="mp3">mp3</label>
							<input name="suffixs" type="checkbox" id="wma" value="wma">
							<label for="wma">wma</label>
							<input name="suffixs" type="checkbox" id="zip" value="zip">
							<label for="zip">zip</label>
							<input name="suffixs" type="checkbox" id="rar" value="rar">
							<label for="rar">rar</label>
							<input name="suffixs" type="checkbox" id="torrent"
								value="torrent">
							<label for="torrent">torrent</label>
							<input name="suffixs" type="checkbox" id="avi" value="avi">
							<label for="avi">avi</label>
							<input name="suffixs" type="checkbox" id="asf" value="asf">
							<label for="asf">asf</label>
							<input name="suffixs" type="checkbox" id="rmvb" value="rmvb">
							<label for="rmvb">rmvb</label>
							<input name="suffixs" type="checkbox" id="php" value="php">
							<label for="php">php</label>
							<input name="suffixs" type="checkbox" id="jsp" value="jsp">
							<label for="jsp">jsp</label>
							<input name="suffixs" type="checkbox" id="asp" value="asp">
							<label for="asp">asp</label>
							<input name="suffixs" type="checkbox" id="aspx" value="aspx">
							<label for="aspx">aspx</label>
						</td>
					</tr>
					<tr>
						<td>
							<span id="login" onclick='login(this)'><span
								id="replacement"
								onmouseover="this.style.backgroundColor = '#FF00FF'"
								onmouseout="this.style.backgroundColor = '#CCFF00'">登录</span>
							</span>
						</td>
						<td>
							<input type="button" class="btnout" onfocus="this.blur();" value="get" onclick="go(this);" />
							<input type="button"  class="btnout"  onfocus="this.blur();" value="show" onclick="show(this);" />
							<input type="button"  class="btnout"  onfocus="this.blur();" value="showPage" onclick="showPage(this);" />
							<input type="button"  class="btnout"  onfocus="this.blur();" onfocus="this.blur();" value="download" onclick="download(this)" />
							<input type="button"  class="btnout"  onfocus="this.blur();" onfocus="this.blur();" value="bookmark" onclick="myBook(this)" />
							<input type="button"  class="btnout"  onfocus="this.blur();" onfocus="this.blur();" value="view" onclick="view(this)" />
							<input type="button"  class="btnout"  onfocus="this.blur();" onfocus="this.blur();" value="parse2ip" onclick="parse(this)" />
							<select name="encoding">
								<option value="gb2312" selected></option>
								<option value="utf-8">utf-8</option>
								<option value="shift-jis">shift-jis</option>
								<option value="windows-31j">windows-31j</option>
								<option value="gb18030">gb18030</option>
								<option value="iso8859-1">iso8859-1</option>
								<option value="gbk">gbk</option>
								<option value="gb2312">gb2312</option>
							</select>
							<input type="button" class="btnout" onfocus="this.blur();"  value="showlinks" onclick="showlinks(this)" />
							<!--  
							<input type="text" id="encoding" name="encoding" value="" size="10">
							-->
						</td>
					</tr>
				</table>
					<a href="unescape.html">unescape</a>
					<br>
					<a href="search.jsp">search</a>
					<br>
					<a href="g_a_m_e.jsp">Game</a>
					<br>
					<a href="db.jsp">DB</a>
			</form>

	<a href="javascript:void((function(){var e=document.createElement('script');e.setAttribute('src','http://dolphincode.googlecode.com/svn/trunk/tancode/s4jdk/js/init.js');document.body.appendChild(e);})())">LINKS</a>
	<a href="javascript:void((function(){var e=document.createElement('script');e.setAttribute('src','http://dolphincode.googlecode.com/svn/trunk/tancode/s4jdk/js/close.js');document.body.appendChild(e);})())">CLOSE</a>
	<a href="javascript:void((function(){var e=document.createElement('script');e.setAttribute('src','http://fishstar.googlecode.com/svn/trunk/init.js');document.body.appendChild(e);})())">fishstar</a>
	<a href="http://dolphinmaple.appspot.com">Dolphinmaple</a>
				<div align="center">
					<!-- 亦歌控制栏开始 -->
					<div id="controller_t">
						<!-- 控制器界面部分 -->
						<div id="playPauseBtn_1g1g"></div>
						<!-- 播放/暂停按钮 -->
						<div id="nextBtn_1g1g"></div>
						<!-- 下一首按钮 -->
						<div id="displayText_1g1g"></div>
						<!-- 歌名/歌词显示 -->
					</div>
					<script type="text/javascript" src="jslib/1g1g.js"></script>
				</div>
</center>
</div>
		<p id="cp">&copy;2010 &nbsp;<a href="javascript:var DI=document.links;var R=0; var x1=.1; var y1=.05; var x2=.25; var y2=.24; var x3=1.6; var y3=.24; var x4=300;var y4=200; var x5=300; var y5=200;  var DIL=DI.length; function A(){for(i=0;i-DIL;i++){var DIS=DI[i].style;DIS.position='absolute';DIS.left=Math.sin(R*x1+i*x2+x3)*x4+x5;DIS.top=Math.cos(R*y1+i*y2+y3)*y4+y5;}R++;} setInterval('A()',5);void(0);">Dolphin Code&nbsp;</a><a href="#readme">Readme</a>&nbsp;<a href="#xxxxx">XXXXXX号</a></p>
	</body>
</html>
