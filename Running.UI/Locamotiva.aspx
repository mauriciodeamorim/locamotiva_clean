<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Locamotiva.aspx.cs" Inherits="Running.UI.Locamotiva" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Locamotiva</title>
    <link href="css/linkedin-gray.css" rel="StyleSheet" type="text/css" />
    <link href="css/core.css" rel="stylesheet" type="text/css" />
    <link href="css/yui-datatable.css" rel="stylesheet" type="text/css" />
    <link href="css/progress.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server" /> 
    <script type="text/javascript">

           function onUpdating(){
           
                // get the update progress div
                var pnlPopup = $get('<%= this.pnlPopup.ClientID %>'); 

                //  get the gridview element        
                var gridView = $get('<%= this.grdAtletas.ClientID %>');
                    
                // make it visible
                pnlPopup.style.display = '';	    
                
                // get the bounds of both the gridview and the progress div
                var gridViewBounds = Sys.UI.DomElement.getBounds(gridView);
                var pnlPopupBounds = Sys.UI.DomElement.getBounds(pnlPopup);
                
                //  center of gridview
                var x = gridViewBounds.x + Math.round(gridViewBounds.width / 2) - Math.round(pnlPopupBounds.width / 2);
                var y = gridViewBounds.y + Math.round(gridViewBounds.height / 2) - Math.round(pnlPopupBounds.height / 2);	    
                
                //	set the progress element to this position
                if(x < 100)
                {
                    x = 300;
                    onUpdated();
                    }
                if(y < 100){
                    y = 200;
                    onUpdated();
                    }
                Sys.UI.DomElement.setLocation(pnlPopup, x, y); 
                
            }

            function onUpdated() {
                // get the update progress div
                var pnlPopup = $get('<%= this.pnlPopup.ClientID %>'); 
                // make it invisible
                pnlPopup.style.display = 'none';
            }
            function onUpdatedNew(elementID, popID)
            { 
            //http://mattberseth.com/blog/2007/10/yui_style_ajax_progress_indica.html
                if (callingObject == elementID) { 
                // get the update progress div
                var pnlPopup = $get(popID); 
                // make it invisible
                pnlPopup.style.display = 'none';
                }
            }                         
            
        </script> 
    <div style="float:left;position:fixed;padding-left:610px;z-index:0"><img src="img/beta.png" /></div>
    <div style="position:absolute;float:left;padding-top:7px;">
    <ajax:TabContainer ID="tabAtletaProva" runat="server" Width="900px" CssClass="linkedin linkedin-gray">
        <ajax:TabPanel runat="server" HeaderText="Locamotiva" ID="tabLocamotiva">
        <HeaderTemplate><div class="tabBody">Locamotiva</div></HeaderTemplate>
            <ContentTemplate>
                Espaço dedicado a equipe de corridas de rua da Locaweb que vence seus limites a cada treino e a cada corrida. 
            </ContentTemplate>
        </ajax:TabPanel>
        <ajax:TabPanel runat="server" HeaderText="Atletas" ID="Atletas">
        <HeaderTemplate><div class="tabBody">Atletas</div></HeaderTemplate>
            <ContentTemplate>
            <asp:UpdatePanel ID="upAtletaResultado" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Panel ID="pnlAtletaResultado" runat="server" Visible="false">
                        <h3><asp:Label ID="lblNomeAtleta" runat="server" ForeColor="Yellow"></asp:Label></h3>
                        <asp:GridView ID="grdAtletaResultado" runat="server" AutoGenerateColumns="false" CssClass="yui-datatable-theme">
                            <Columns>
                                <asp:BoundField DataField="Data" HeaderText="Data" DataFormatString="{0:dd/MM/yy}"
                                ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="Prova" HeaderText="Prova" />
                                <asp:BoundField DataField="Distancia" HeaderText="Distância" 
                                ItemStyle-HorizontalAlign="Right"/>
                                <asp:BoundField DataField="Numero" HeaderText="Número"
                                ItemStyle-HorizontalAlign="Right" />
                                <asp:BoundField DataField="TempoOfic" HeaderText="Tempo Oficial" DataFormatString="{0:HH:mm:ss}"
                                ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="TempoLiq" HeaderText="Tempo Líquido" DataFormatString="{0:HH:mm:ss}" 
                                ItemStyle-HorizontalAlign="Center"/>
                                <asp:BoundField DataField="ClassGeral" HeaderText="Classificação" 
                                ItemStyle-HorizontalAlign="Right"/>
                            </Columns>
                            <HeaderStyle Font-Size="Small" />
                            <RowStyle CssClass="data-row" />
                            <SelectedRowStyle CssClass="row-select" />
                            <AlternatingRowStyle  CssClass="alt-data-row" />
                            <EmptyDataRowStyle CssClass="empty-data" />
                            <EmptyDataTemplate>Nenhuma prova encontrada para este atleta.</EmptyDataTemplate>
                        </asp:GridView> 
                        <div style="height:30px"></div>
                    </asp:Panel>
                    <asp:GridView ID="grdAtletas" runat="server" AutoGenerateColumns="false" DataKeyNames="IdAtleta"
                     GridLines="Horizontal" OnSelectedIndexChanging="grdAtletas_SelectedIndexChanging" CssClass="yui-datatable-theme">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:CommandField HeaderText="Opções" ShowSelectButton="true" SelectText="ver resultados" ItemStyle-HorizontalAlign="Center" 
                            ItemStyle-Width="150px" />
                        </Columns>
                        <RowStyle CssClass="data-row" />
                        <SelectedRowStyle CssClass="row-select" />
                        <AlternatingRowStyle  CssClass="alt-data-row" />                    
                        <EmptyDataRowStyle CssClass="empty-data" />
                        <EmptyDataTemplate>Nenhum registro encontrado.</EmptyDataTemplate>
                    </asp:GridView>
                 </ContentTemplate>
            </asp:UpdatePanel> 
            <ajax:UpdatePanelAnimationExtender ID="UpdatePanelAnimationExtender1" runat="server" TargetControlID="upAtletaResultado">
                <Animations>
                    <OnUpdating>
                        <Parallel duration="0">
                            <%-- place the update progress div over the gridview control --%>
                            <ScriptAction Script="onUpdating();" />  
                         </Parallel>
                    </OnUpdating>
                    <OnUpdated>
                        <Parallel duration="0">
                            <%--find the update progress div and place it over the gridview control
                            <ScriptAction Script="onUpdatedNew('tabAtletaProva_Atletas_grdAtletas', 'pnlPopup');" /> --%>
                            <ScriptAction Script="onUpdated();" />
                        </Parallel> 
                    </OnUpdated>
                </Animations>
            </ajax:UpdatePanelAnimationExtender> 
      
            </ContentTemplate>
        </ajax:TabPanel>
        <ajax:TabPanel runat="server" ID="Provas">
        <HeaderTemplate><div class="tabBody">Provas</div></HeaderTemplate>
            <ContentTemplate>
                <asp:UpdatePanel ID="upResultadaProva" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Panel ID="pnlResultadoProva" runat="server" Visible="false">
                            <h3><asp:Label ID="lblNomeProva" runat="server" ForeColor="Yellow"></asp:Label></h3>
                            <asp:GridView id="grdResultados" runat="server" AutoGenerateColumns="false" CssClass="yui-datatable-theme">
                                <Columns>
                                    <asp:BoundField DataField="Numero" HeaderText="Número" ItemStyle-HorizontalAlign="Right" />
                                    <asp:BoundField DataField="Nome" HeaderText="Atleta" />
                                    <asp:BoundField DataField="TempoOfic" HeaderText="Tempo Oficial" DataFormatString="{0:HH:mm:ss}"
                                        ItemStyle-HorizontalAlign="Center"/>
                                    <asp:BoundField DataField="TempoLiq" HeaderText="Tempo Líquido" DataFormatString="{0:HH:mm:ss}"
                                    ItemStyle-HorizontalAlign="Center"/>
                                    <asp:BoundField DataField="ClassGeral" HeaderText="Classificação" ItemStyle-HorizontalAlign="Right"/>
                                </Columns>
                                <RowStyle CssClass="data-row" />
                                <SelectedRowStyle CssClass="row-select" />
                                <AlternatingRowStyle  CssClass="alt-data-row" />
                                <EmptyDataRowStyle CssClass="empty-data" />
                                <EmptyDataTemplate>Nenhum resultado encontrado para esta prova.</EmptyDataTemplate>
                            </asp:GridView>
                            <div style="height:30px"></div>
                        </asp:Panel>
                        <asp:GridView ID="grdProvas" runat="server" AutoGenerateColumns="false" DataKeyNames="IdProva"
                                OnSelectedIndexChanging="grdProvas_SelectedIndexChanging" CssClass="yui-datatable-theme"
                                OnRowDataBound="grdProvas_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="Data" HeaderText="Data" DataFormatString="{0:dd/MM/yy}" ItemStyle-HorizontalAlign="Center" />
                                <asp:ButtonField CommandName="Select" DataTextField="Nome" />
                                <asp:BoundField DataField="Etapa" HeaderText="Etapa" />
                                <asp:BoundField DataField="Distancia" HeaderText="Distância" ItemStyle-HorizontalAlign="Right" />
                            </Columns>
                            <RowStyle CssClass="data-row" />
                            <SelectedRowStyle CssClass="row-select" />
                            <AlternatingRowStyle  CssClass="alt-data-row" />
                            <EmptyDataRowStyle CssClass="empty-data" />
                            <EmptyDataTemplate>Nenhuma prova encontrada.</EmptyDataTemplate>                    
                        </asp:GridView> 
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="grdProvas" EventName="SelectedIndexChanging" />
                    </Triggers>
                </asp:UpdatePanel>
            </ContentTemplate>
        </ajax:TabPanel>
    </ajax:TabContainer>
    </div>
        <asp:Panel ID="pnlPopup" runat="server" CssClass="progress" style="display:none;">
            <div class="container">
                <div class="header">Carregando...</div>
                <div class="body">
                    <img src="img/activity.gif" alt="" />
                </div>
            </div>
        </asp:Panel>     
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
    </form>
</body>
</html>
