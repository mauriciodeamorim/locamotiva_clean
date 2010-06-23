using System;
using System.Collections;
using System.Configuration;
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
    public partial class ProvaLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                return;
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            ProvaBO pbo = new ProvaBO();
            Prova p = pbo.GetById(Convert.ToInt32(ViewState["id"]));

            p.Nome = txtNome.Text;
            
            pbo.Update();

            txtData.Text = string.Empty;
            txtDistancia.Text = string.Empty;
            txtEtapa.Text = string.Empty;
            txtLocal.Text = string.Empty;
            txtNome.Text = string.Empty;

            grdProva.DataBind();
        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            ProvaBO pbo = new ProvaBO();
            Prova prova = new Prova();
            try
            {
                prova.Data = Convert.ToDateTime(txtData.Text.Trim());
                prova.Nome = txtNome.Text;
                prova.Local = txtLocal.Text;
                prova.Distancia = txtDistancia.Text;
                prova.Etapa = txtEtapa.Text;

                pbo.Insert(prova);

                grdProva.DataBind();

                txtData.Text = string.Empty;
                txtDistancia.Text = string.Empty;
                txtEtapa.Text = string.Empty;
                txtLocal.Text = string.Empty;
                txtNome.Text = string.Empty;
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.ToString();
            }

        }

        protected void grdProva_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int idProva = Convert.ToInt32(((GridView)sender).DataKeys[e.NewSelectedIndex].Value);
            ViewState["id"] = idProva;

            ProvaBO pbo = new ProvaBO();
            Prova p = pbo.GetById(idProva);

            txtData.Text = Convert.ToString(p.Data);
            txtNome.Text = p.Nome;
            txtDistancia.Text = p.Distancia;
            txtEtapa.Text = p.Etapa;
            txtLocal.Text = p.Local;
        }
    }
}
