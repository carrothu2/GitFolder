<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorkSheet_Detail.aspx.cs" Inherits="WorkSheet_WorkSheet_Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/css/css.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
<table cellpadding="0" cellspacing="0" class="tbl_nav" width="100%" id="tbl_nav">
<tr><td class="title"><span class="span">工单</span></td></tr>
</table>

<table  cellpadding="1" cellspacing="1" class="tbl_add" style="margin:50px 0px 20px 5px;">
    <tr>
<td class="left-bg">工单标题：</td>
<td colspan="3"><asp:Literal ID="LitTitle"  runat="server" /></td>
</tr>
<tr>
<td class="left-bg" width="15%">单据编号：</td>
<td width="30%"><asp:Literal ID="LitPoPiNo" runat="server" /></td>
<td class="left-bg" width="15%">是否截单：</td>
<td width="15%"><asp:Literal ID="LitIsClose" runat="server" /></td>
</tr>
<tr>
<td class="left-bg">采购员：</td>
<td ><asp:Literal ID="LitPurchaseName"  runat="server"></asp:Literal></td>
<td class="left-bg">创建时间：</td>
<td ><asp:Literal ID="LitCreateDate" runat="server" /></td>
</tr>
<tr>
    <td class="left-bg">型号:</td>
    <td colspan="3"><asp:Literal ID="LitPartNo"  runat="server" /></td>
</tr>



</table>



         <div style="margin-top:45px; margin-left:5px;"><strong>问答记录</strong></div>
            <table width="100%"  cellspacing="1" cellpadding="1"  class="tbl_add" style="margin-top:8px;">
            <tbody>
                <asp:Repeater ID="rpWorkSheetQA" runat="server">
                    <ItemTemplate>
                        <tr>    
                        <td width="10%" ><asp:Literal runat="server" ID="LitGroupName" ></asp:Literal>
                             <asp:Literal runat="server" ID="LitAdminLoginID"  Text='<%#Eval("AdminLoginID") %>' Visible="false"></asp:Literal>
                        </td>
                        <td width="10%" ><asp:Literal runat="server" ID="LitAdminLoginName" ></asp:Literal></td>
                        <td><asp:Literal runat="server" ID="LitReply" Text='<%#Eval("Reply") %>'></asp:Literal></td>
                        <td width="15%"><asp:Literal runat="server" ID="LitReplyTime" Text='<%#Eval("ReplyTime") %>'></asp:Literal></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>  
        <div style="margin:35px 0px 0px 10px;">

                   <strong> 发言：</strong><br />
                    <asp:TextBox runat="server" ID="txtText" TextMode="MultiLine" Width="600px" Height="80px"></asp:TextBox>
        </div>  


<div>    
    <asp:Button ID="btnSubmit" CssClass="t-button" OnClick="btnSubmit_Click" Text="提交" runat="server" />
    <asp:Button ID="btnBack" CssClass="t-button" OnClick="btnBack_Click" Text="返回" runat="server" />
</div>
</form>
</body>
</html>
