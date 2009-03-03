using System.Collections.Generic;
using System.Linq;

namespace Running.Business
{
    public class ProvaBO
    {
        private RunningDataContext db;

        public ProvaBO()
        {
            this.db = new RunningDataContext();
        }

        public IEnumerable<Prova> GetAll()
        {
            var provas = from p in this.db.Provas
                         orderby p.Data
                         select p;
            return provas;
        }

        public Prova GetById(int idProva)
        {
            Prova prova = (from p in this.db.Provas
                           where p.IdProva == idProva
                          select p).SingleOrDefault();
            return prova;
        }

        public void Update()
        {
            this.db.SubmitChanges();
        }

        public void Insert(Prova p)
        {
            this.db.Provas.InsertOnSubmit(p);
            this.db.SubmitChanges();
        }
    }
}
