using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Running.Business
{
    public class ResultadoBO
    {
        private RunningDataContext db;

        public ResultadoBO()
        {
            this.db = new RunningDataContext();
        }

        public List<Resultado> GetAll()
        {
            var resultados = from r in this.db.Resultados
                             orderby r.TempoLiq
                             select r;
            return resultados.ToList();
        }

        public List<Resultado> GetAll(int maximumRows, int startRowIndex)
        {
            var resultados = from r in this.db.Resultados
                             orderby r.TempoLiq
                             select r;
            return resultados.ToList();
        }

        public IEnumerable<Resultado> GetByProva(int idProva)
        {
            var atletas = from a in this.db.Resultados
                          where a.IdProva == idProva
                          select a;
            return atletas;
        }

        public Resultado GetById(int id)
        { 
            Resultado resultado = (from r in this.db.Resultados
                                  where r.IdResultado == id
                                  select r).SingleOrDefault();
            return resultado;
        }

        public void Update()
        {
            db.SubmitChanges();
        }

        public void Insert(Resultado r)
        {
            this.db.Resultados.InsertOnSubmit(r);
            this.db.SubmitChanges();
        }
        
        public int Count()
        {
            var resultados = from r in this.db.Resultados
                             select r;
            return resultados.Count();
        }
    }
}
