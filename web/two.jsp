<%@ page import="java.text.NumberFormat" %><%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-03-24
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="computer" %>
<html>
<head>
    <title>Two</title>
</head>
输入三个数值a,b,c（代表三角形的三边）
<body color=#000000>
    <FORM action ="" method = get name = form>
        <table>
            <tr><td>输入数值a：</td>
                <td><input type="text" name = "a"></td>
            </tr>
            <tr><td>输入数值b：</td>
                <td><input type="text" name = "b"></td>
            </tr>
            <tr><td>输入数值c：</td>
                <td><input type="text" name = "c"></td>
            </tr>
        </table>
        <br><input type="submit" value="提交" name=submit>
    </FORM>
    <%
        NumberFormat f = NumberFormat.getInstance();
        f.setMaximumFractionDigits(6);
        String a =request.getParameter("a");
        String b =request.getParameter("b");
        String c =request.getParameter("c");
        if(a==null||b==null||c==null){
            a="0";
            b="0";
            c="0";
        }
        if(a.length()>0&&b.length()>0&&c.length()>0){
    %>	<computer:GetArea numberC="<%=c %>" numberB="<%=b %>" numberA="<%=a %>" ></computer:GetArea>
    <%  double double_s = area.doubleValue();
        String string_s = f.format(double_s);
        out.print("该三角形的面积为："+string_s);
    %>
    <%--<br><%=message %>
    <br><%=area %>--%>
    <%	}
    %>
</body>
</html>
