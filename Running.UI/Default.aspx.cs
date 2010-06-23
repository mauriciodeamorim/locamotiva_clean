using System;
using System.Collections;
using System.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Running.Business;

namespace Running.UI
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtletaBO atleta = new AtletaBO();

            List<Atleta> listaAtleta = atleta.GetAll().ToList();

            grvTeste.DataSource = listaAtleta;
            grvTeste.DataBind();

            //lblMessage.Text = prova[0].Nome;
        }

        protected void btnListar_Click(object sender, EventArgs e)
        {
            //Prova pro = new Prova();
            //pro.Nome = txtNome.Text.Trim();

            //ProvaDao pdao = new ProvaDao();
            //List<Prova> testeProva = pdao.Listar().ToList();

            //foreach (var item in testeProva)
            //{
            //    if (!string.IsNullOrEmpty(item.ToString()))
            //        lblMessage.Text = item.Nome + item.Local;
            //    else
            //        lblMessage.Text = "Nenhum registro";
            //}

            
        }
    }
}
