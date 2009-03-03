using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Running.Business
{
    public interface IRunning
    {
        IEnumerable<object> ObterTodos();
        
        object Obter(int id);

        void Alterar();

        void Inserir(object o);

        void Excluir(object o);

    }
}
