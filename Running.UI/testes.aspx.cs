using System;
using System.Collections;
using System.Collections.Generic;
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

namespace Running.UI
{
    public partial class testes : System.Web.UI.Page
    {

        public class MinhaClasse {
            public string Nome{get; set;}
            public string Cpf{get; set;}
            public int Numero { get; set; }
        
        }

        public class MinhaTerra {
            public string Cidade { get; set; }
            public string Pais { get; set; }
            public int Distancia { get; set; }
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            List<MinhaClasse> myClass = new List<MinhaClasse>{
                                            new MinhaClasse{Nome = "11111", Cpf ="Aba", Numero = 1},
                                            new MinhaClasse{Nome = "22222", Cpf ="Aba", Numero = 2},
                                            new MinhaClasse{Nome = "33333", Cpf ="0000", Numero = 3},
                                            new MinhaClasse{Nome = "44444", Cpf ="Zata", Numero = 4},
                                            new MinhaClasse{Nome = "55555", Cpf ="Zata", Numero = 5}
            };

            //Consulta
            var resultado = (from r in myClass
                             select r).Skip(0).Take(10);
            //Anonymous Type
            var anon = from r in myClass
                       select new
                       {
                           Casa = r.Cpf,
                           Quadra = r.Nome,
                           Rua = "Minha",
                           Lote = "123456"
                       };

            //Classe Terra
            List<MinhaTerra> myEarth = new List<MinhaTerra>{
                                            new MinhaTerra{Cidade = "SP", Pais ="Brasil", Distancia=10},
                                            new MinhaTerra{Cidade="SP",Pais="Japao", Distancia=20},
                                            new MinhaTerra{Cidade="MT",Pais="Brasil", Distancia=30},
                                            new MinhaTerra{Cidade="BH",Pais="Irlanda", Distancia=15},
                                            new MinhaTerra{Cidade="MT",Pais="Japao", Distancia=12},
                                            new MinhaTerra{Cidade="SC",Pais="Africa", Distancia=50}
            };

            //Anonymous type
            var lambda = from t in myEarth
                         group t by t.Pais into grupo
                         select new {
                                Pais = grupo.Key,
                                Cidade = grupo,
                                Distancia = grupo.Sum(p => p.Distancia)

                         };

            //Plantas = (p => p.Sum(r.Numero)
            
            grdTeste.DataSource = myClass;
            grdTeste.DataBind();

            grdNovo.DataSource = lambda;
            grdNovo.DataBind();
        }
    }
}
