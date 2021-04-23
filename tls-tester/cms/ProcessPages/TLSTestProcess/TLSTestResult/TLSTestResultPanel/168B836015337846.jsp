<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/><!--ivypanel--><table >
<tr >
<td ><%=ivy.cms.co("TLSTestResultPanel/LogEntry")%></td>
<td ><!--ivyjsp --><% in.logList.get(0); %><!--/ivyjsp --></td></tr>
</table>