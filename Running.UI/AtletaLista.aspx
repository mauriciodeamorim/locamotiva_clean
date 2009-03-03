<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AtletaLista.aspx.cs" Inherits="Running.UI.AtletaLista" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    
    <form id="form1" runat="server">
    <h2>Lista de atletas</h2>
    <div>
        <asp:GridView ID="grvAtletas" runat="server"  AutoGenerateColumns="false"
            onselectedindexchanged="grvAtletas_SelectedIndexChanged" OnRowCommand="grvAtletas_RowCommand">
            <Columns>
                <asp:BoundField DataField="Nome" HeaderText="Nome" />
                <asp:TemplateField HeaderText="Sexo" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lblNome" runat="server"><%# Eval("Sexo") %></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Opções
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkExcluir" runat="server" OnClientClick="return confirm('Deseja excluir realmente?');"
                        ToolTip="Excluir" CommandName="Excluir" CommandArgument='<%# Eval("IdAtleta") %>' Visible="false">Excluir</asp:LinkButton>
                        <asp:LinkButton ID="lnkAlterar" runat="server" ToolTip="Alterar" CommandName="Alterar" 
                        CommandArgument='<%# Eval("IdAtleta") %>'>Alterar</asp:LinkButton>
                    </ItemTemplate>                    
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <div>
        <h2>Inserir novo atleta</h2>
        <div></div>
        <div>Nome: <asp:TextBox ID="txtNome" runat="server"></asp:TextBox></div>
        <div style="padding-bottom:10px;padding-top:10px"></div>
        <div style="display:none">Sexo: 
            <asp:DropDownList ID="ddlSexo" runat="server">
                <asp:ListItem Text="Masculino" Value="M"></asp:ListItem>
                <asp:ListItem Text="Feminino" Value="F"></asp:ListItem>
           </asp:DropDownList>
        </div>
        <div style="padding-bottom:10px;padding-top:10px"></div>
        <div style="float:left"><asp:Button ID="btnInserir" runat="server" Text="Inserir" OnClick="btnInserir_Click"/></div>
        <div style="padding-left:30px; float:left"><asp:Button ID="btnAlterar" runat="server" Text="Alterar" OnClick="btnAlterar_Click" Visible="false"/></div>
        <div style="padding-bottom:10px;padding-top:10px"></div>
        <div><h2><asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></h2></div>
    </div>
    </form>
</body>
</html>
