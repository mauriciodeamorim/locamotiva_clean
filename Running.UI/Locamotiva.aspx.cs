using System;
using System.Linq;
using System.Web.UI.WebControls;
using Running.Business;
using System.Collections.Generic;

namespace Running.UI
{
    public partial class Locamotiva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProvaBO provas = new ProvaBO();
            grdProvas.DataSource = from p in provas.GetAll()
                                   orderby p.Data descending
                                   select p;
            System.Threading.Thread.Sleep(200);
            grdProvas.DataBind();

            
            AtletaBO atletas = new AtletaBO();
            grdAtletas.DataSource = from a in atletas.GetAll()
                                    orderby a.Nome
                                    select a;
            grdAtletas.DataBind();
        }

        protected void grdProvas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.DataItemIndex == 0)
                e.Row.Style.Add("background-color", "#CC9966");
        }

        protected void grdAtletas_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int idAtleta = Convert.ToInt32(((GridView)sender).DataKeys[e.NewSelectedIndex].Value);

            ResultadoBO resultados = new ResultadoBO();
            
            List<Resultado> listaResultados = resultados.GetAll();

            //Query using LinQ query expression 
            //lblNomeAtleta.Text = (from a in listaResultados
            //                      where a.Atleta.IdAtleta == idAtleta
            //                      orderby a.Atleta.Nome
            //                      select a.Atleta.Nome).First().ToString();

            //Equal above exemplo using Anonymous Methods and lambda expression
            lblNomeAtleta.Text = listaResultados.Where(a => a.Atleta.IdAtleta == idAtleta).Select(a => a.Atleta.Nome).FirstOrDefault();
      
            grdAtletaResultado.DataSource = from ar in listaResultados
                                            where ar.Atleta.IdAtleta == idAtleta
                                            orderby ar.Prova.Data descending
                                            select new
                                            {
                                                Data = ar.Prova.Data,
                                                Prova = ar.Prova.Nome,
                                                Distancia = ar.Prova.Distancia,
                                                Numero = ar.Numero,
                                                TempoOfic = ar.TempoOfic,
                                                TempoLiq = ar.TempoLiq,
                                                ClassGeral = ar.ClassGeral
                                            };
            grdAtletaResultado.DataBind();

            pnlAtletaResultado.Visible = true;
            tabAtletaProva.ActiveTabIndex = 1;
        }

        protected void grdProvas_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            int idProva = Convert.ToInt32(((GridView)sender).DataKeys[e.NewSelectedIndex].Value);

            List<Resultado> resultados = new ResultadoBO().GetByProva(idProva).ToList();

            grdResultados.DataSource = from r in resultados
                                       orderby r.Numero
                                       select new
                                       {
                                           Numero = r.Numero,
                                           Nome = r.Atleta.Nome,
                                           TempoOfic = r.TempoOfic,
                                           TempoLiq = r.TempoLiq,
                                           ClassGeral = r.ClassGeral
                                       };
            grdResultados.DataBind();

            lblNomeProva.Text = resultados.Select(p => p.Prova.Nome).FirstOrDefault() + " - " + resultados.Select(p => p.Prova.Distancia).FirstOrDefault();
            pnlResultadoProva.Visible = true;
            tabAtletaProva.ActiveTabIndex = 2;
        }
    }
}
