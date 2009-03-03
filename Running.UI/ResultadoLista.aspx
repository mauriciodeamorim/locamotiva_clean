<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultadoLista.aspx.cs" Inherits="Running.UI.ResultadoLista" MasterPageFile="~/Menu.Master" %>
<asp:Content ID="Content" runat="server" ContentPlaceHolderID="cphPrincipal">
    <div>
        <h2>Lista de resultados</h2>
        <asp:GridView ID="grdResultado" runat="server" AllowPaging="false" AllowSorting="true" AutoGenerateColumns="false"
         EmptyDataText="Nenhum resgistro encontrado." ShowFooter="true" DataSourceID="odsResultado">
            <Columns>
                <asp:BoundField DataField="IdResultado" SortExpression="IdResultado" HeaderText="ID"/>
                <asp:BoundField DataField="Equipe"  SortExpression="Equipe" HeaderText="Equipe" />
                <asp:BoundField DataField="Distancia" HeaderText="Distância"/>
                <asp:BoundField DataField="IdAtleta" HeaderText="Atleta" />
            </Columns>
         </asp:GridView>
         <asp:ObjectDataSource ID="odsResultado" 
                               SelectMethod="ObterTodos"
                               TypeName="Running.Business.ResultadoBO"
                               runat="server">
        </asp:ObjectDataSource> 
    </div>
    
    <div>
        <asp:GridView ID="grd2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" DataSourceID="ods2" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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
    
        <asp:ObjectDataSource ID="ods2" runat="server" 
            SelectMethod="ObterTodos" TypeName="Running.Business.ResultadoBO">
        </asp:ObjectDataSource>
    
    </div>
</asp:Content>