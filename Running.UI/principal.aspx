<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="Running.UI.principal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Locamotiva</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <h1>Equipe Locamotiva</h1>
        <h2>Listagem de provas</h2>
<%--        <div>http://weblogs.asp.net/scottgu/archive/2006/05/14/Using-LINQ-with-ASP.NET-_2800_Part-1_2900_.aspx</div>
        <div>http://weblogs.asp.net/scottgu/archive/2006/06/04/Using-DLINQ-with-ASP.NET-_2800_Part-2-of-my-LINQ-series_2900_.aspx</div>--%>
        <asp:GridView ID="grdProvas" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ldsProvas" DataKeyNames="IdProva">
            <Columns>
                <asp:BoundField DataField="Data" HeaderText="Data" ReadOnly="True" 
                    SortExpression="Data" DataFormatString="{0:MMM/yyyy}" />
                <asp:BoundField DataField="Nome" HeaderText="Prova" ReadOnly="True" 
                    SortExpression="Nome" />
                <asp:BoundField DataField="Etapa" HeaderText="Etapa" ReadOnly="True" 
                    SortExpression="Etapa" />
                <asp:BoundField DataField="Local" HeaderText="Local" ReadOnly="True" 
                    SortExpression="Local" />
                <asp:BoundField DataField="Distancia" HeaderText="Distancia" ReadOnly="True" 
                    SortExpression="Distancia" />
                <asp:BoundField DataField="IdProva" HeaderText="IdProva" ReadOnly="True" 
                    SortExpression="IdProva" Visible="False" />
                <asp:CommandField ShowSelectButton="True" SelectText="Ver Resultados" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="ldsProvas" runat="server" 
            ContextTypeName="Running.Business.RunningDataContext" OrderBy="Data" 
            Select="new (Nome, Etapa, Data, Local, Distancia, IdProva)" 
            TableName="Provas">
        </asp:LinqDataSource>
        <asp:UpdatePanel ID="upResultados" runat="server" Visible="true">
            <ContentTemplate>
                <asp:GridView ID="grdResultados" runat="server" >

                </asp:GridView>

            </ContentTemplate>
            <Triggers></Triggers>    
        </asp:UpdatePanel>            
    </div>
    </form>
</body>
</html>
