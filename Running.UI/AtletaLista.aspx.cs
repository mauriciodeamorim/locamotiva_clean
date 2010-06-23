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
    public partial class AtletaLista : System.Web.UI.Page
    {
        private AtletaBO db;
        private int idAtleta;
                
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                return;

            CarregarListaAtleta();
        }

        protected void grvAtletas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandArgument != null)
            {
                AtletaBO c = new AtletaBO();
                ViewState.Add("id",Convert.ToInt32(e.CommandArgument));

                idAtleta = Convert.ToInt32(ViewState["id"]);
                Atleta a = c.GetById(idAtleta);

                if (e.CommandName == "Excluir")
                {
                    try
                    {
                        c.Delete(a);
                    }
                    catch 
                    {
                        lblMessage.Text = "Não foi possível excluir";
                    }
                }

                if(e.CommandName == "Alterar")
                    try
                    {
                        c.GetById(idAtleta);
                        txtNome.Text = a.Nome;
                        ddlSexo.SelectedIndex = (a.Sexo == 'M') ? 0 : 1;
                        btnAlterar.Visible = true;
                        btnInserir.Visible = false;
                    }
                    catch
                    {
                        lblMessage.Text = "Não foi possível ......";
                    }
                CarregarListaAtleta();
            }
            
            string strAtleta = ((LinkButton)e.CommandSource).ID;

            //if(e.CommandName == "Excluir")
            //    lblMessage.Text = strAtleta; // + idAtleta.ToString();
            //else
            //    lblMessage.Text = "não foi";
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            db = new AtletaBO();
            Atleta a = db.GetById(Convert.ToInt32(ViewState["id"]));
           
            a.Nome = txtNome.Text;
            a.Sexo = char.Parse(ddlSexo.SelectedValue);
            
            db.Update();
            
            CarregarListaAtleta();
        }

        private void CarregarListaAtleta()
        {
            db = new AtletaBO();
            grvAtletas.DataSource = db.GetAll().ToList();
            grvAtletas.DataBind();
        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            Atleta a = new Atleta();

            a.Nome = txtNome.Text;
            a.Sexo = char.Parse(ddlSexo.SelectedValue);

            db = new AtletaBO();
            db.Insert(a);

            lblMessage.Text = "Dados inseridos com sucesso";

            CarregarListaAtleta();
        }

        protected void grvAtletas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
