<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Render.aspx.cs" Inherits="Running.UI.Render" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="scmRender" runat="server"></asp:ScriptManager>
        <asp:Label ID="lblRender" runat="server" Text="LAbel"></asp:Label>
        <asp:Literal ID="litRender" runat="server" Text="literal">
        </asp:Literal>
        <asp:Panel ID="pnlRender" runat="server" ForeColor="Red" ScrollBars="Vertical">
            Panel Render
        </asp:Panel>
        <asp:HyperLink ID="lnkRender" runat="server" Text="Link Render" NavigateUrl="x"></asp:HyperLink>
        <asp:Timer ID="tmrRender" runat="server" Interval="30" Enabled="false"></asp:Timer>
    
    </div>
    </form>
</body>
</html>
