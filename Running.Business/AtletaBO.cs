using System.Collections.Generic;
using System.Linq;

namespace Running.Business
{
    public class AtletaBO
    {
        private RunningDataContext db;

        public AtletaBO()
        {
            this.db = new RunningDataContext();
        }

        public IEnumerable<Atleta> GetAll()
        {
            var atleta = from a in this.db.Atletas
                         select a;
            return atleta;
        }

        public Atleta GetById(int id)
        {
            Atleta atleta = this.db.Atletas.Where(a => a.IdAtleta == id).SingleOrDefault();
            return atleta;
        }

        public void Update()
        {
            this.db.SubmitChanges();
        }

        public void Insert(Atleta a)
        {
            this.db.Atletas.InsertOnSubmit(a);
            this.db.SubmitChanges();
        }

        public void Delete(Atleta a)
        {
            this.db.Atletas.DeleteOnSubmit(a);
            this.db.SubmitChanges();
        }

    }
}
