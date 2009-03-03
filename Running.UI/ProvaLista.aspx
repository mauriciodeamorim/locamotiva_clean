<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProvaLista.aspx.cs" Inherits="Running.UI.ProvaLista" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Lista de provas</h2>
    <div>
    <asp:GridView ID="grdProva" runat="server" DataSourceID="odsProva" 
            DataKeyNames="IdProva" AutoGenerateColumns="False" 
            OnSelectedIndexChanging="grdProva_SelectedIndexChanging" >
        <Columns>
            <asp:BoundField DataField="Data" DataFormatString="{0:dd/MMM/yy}" 
                HeaderText="Data" SortExpression="Data" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Etapa" HeaderText="Etapa" SortExpression="Etapa" />
            <asp:BoundField DataField="Local" HeaderText="Local" SortExpression="Local" />
            <asp:BoundField DataField="Distancia" HeaderText="Distância" 
                SortExpression="Distancia" />
            <asp:CommandField ShowSelectButton="True" SelectText="Alterar" />
        </Columns>
        </asp:GridView>
    </div>
    <asp:ObjectDataSource ID="odsProva" SelectMethod="ObterTodos" runat="server" TypeName="Running.Business.ProvaBO"></asp:ObjectDataSource>
    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
    <br />
    <h2>Alterar provas</h2>
    <div style="float:left;width:80px;padding:10 20 10 10">Data</div><div><asp:TextBox ID="txtData" runat="server" /></div>
    <div style="float:left;width:80px;padding:10 20 10 10">Nome</div><div><asp:TextBox ID="txtNome" runat="server" /></div>
    <div style="float:left;width:80px;padding:10 20 10 10">Etapa</div><div><asp:TextBox ID="txtEtapa" runat="server" /></div>
    <div style="float:left;width:80px;padding:10 20 10 10">Local</div><div><asp:TextBox ID="txtLocal" runat="server" /></div>
    <div style="float:left;width:80px;padding:10 20 10 10">Distância</div><div><asp:TextBox ID="txtDistancia" runat="server" /></div>
    <div style="padding-top:15px;">
        <asp:Button ID="btnAlterar" runat="server" Text="Alterar" OnClick="btnAlterar_Click" />
        <span style="padding-left:20px;"><asp:Button ID="btnInserir" runat="server" Text="Inserir" OnClick="btnInserir_Click" /></span>
    </div>
    </form>
    </body>
</html>
