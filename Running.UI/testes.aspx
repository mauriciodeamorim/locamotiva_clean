<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testes.aspx.cs" Inherits="Running.UI.testes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="grdTeste" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <%--<asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:BoundField DataField="CPF" HeaderText="CPF" />--%>    
    </asp:GridView>
    
    <asp:GridView ID="grdNovo" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="Pais" HeaderText="País" />
            <asp:TemplateField HeaderText="Cidades" >
                <ItemTemplate>
                    <asp:BulletedList ID="bltNovo" runat="server" DataSource='<%#Eval("Cidade")%>' DataValueField="Cidade"
                    BulletStyle="Circle" BackColor="AliceBlue" ToolTip='<%#Eval("Pais")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Distancia" HeaderText="Distancia total" />
        </Columns>
    </asp:GridView>
    
    </div>
    </form>
</body>
</html>
