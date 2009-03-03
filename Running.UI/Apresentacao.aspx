<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apresentacao.aspx.cs" Inherits="Running.UI.Apresentacao" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="grdResultados" runat="server" AutoGenerateColumns="False" 
            AllowSorting="True" DataSourceID="odsResultados">
        <Columns>
            <asp:BoundField DataField="IdResultado" HeaderText="IdResultado" 
                SortExpression="IdResultado" />
            <asp:BoundField DataField="Numero" HeaderText="Numero" 
                SortExpression="Numero" />
            <asp:BoundField DataField="FaixaEtaria" HeaderText="FaixaEtaria" 
                SortExpression="FaixaEtaria" />
            <asp:BoundField DataField="Equipe" HeaderText="Equipe" 
                SortExpression="Equipe" />
            <asp:BoundField DataField="TempoLiq" HeaderText="TempoLiq" 
                SortExpression="TempoLiq" />
            <asp:BoundField DataField="TempoOfic" HeaderText="TempoOfic" 
                SortExpression="TempoOfic" />
            <asp:BoundField DataField="ClassGeral" HeaderText="ClassGeral" 
                SortExpression="ClassGeral" />
            <asp:BoundField DataField="ClassSexo" HeaderText="ClassSexo" 
                SortExpression="ClassSexo" />
            <asp:BoundField DataField="ClassFaixa" HeaderText="ClassFaixa" 
                SortExpression="ClassFaixa" />
            <asp:BoundField DataField="TotalClassGeral" HeaderText="TotalClassGeral" 
                SortExpression="TotalClassGeral" />
            <asp:BoundField DataField="TotalClassSexo" HeaderText="TotalClassSexo" 
                SortExpression="TotalClassSexo" />
            <asp:BoundField DataField="TotalClassFaixa" HeaderText="TotalClassFaixa" 
                SortExpression="TotalClassFaixa" />
            <asp:BoundField DataField="Ritmo" HeaderText="Ritmo" SortExpression="Ritmo" />
            <asp:BoundField DataField="Distancia" HeaderText="Distancia" 
                SortExpression="Distancia" />
            <asp:BoundField DataField="NoLugarDe" HeaderText="NoLugarDe" 
                SortExpression="NoLugarDe" />
            <asp:CheckBoxField DataField="FezInscricao" HeaderText="FezInscricao" 
                SortExpression="FezInscricao" />
            <asp:BoundField DataField="IdAtleta" HeaderText="IdAtleta" 
                SortExpression="IdAtleta" />
            <asp:BoundField DataField="IdProva" HeaderText="IdProva" 
                SortExpression="IdProva" />
        </Columns>
    </asp:GridView>
        <asp:ObjectDataSource ID="odsResultados" runat="server" 
            SelectMethod="ObterPorProva" TypeName="Running.Business.ResultadoBO">
            <SelectParameters>
                <asp:QueryStringParameter Name="idProva" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        
    </div>
    </form>
</body>
</html>
