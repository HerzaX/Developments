using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace FourierDemo.ViewModel
{
    public class ViewModelCommand : ICommand //Implementacion de la interfaz
    {
        //definicion de campos de tipo action para ejecutar los comandos 
        //Fields
        private readonly Action<object> _executeAction; //sirve para encapsular un metodo (podemos pasar un metodo como parametro)
        private readonly Predicate<object> _canExecuteAction; //tipo predicate para saber si funciona o no
        //permite que se deshabilite o habilite en funcion de si se ejecuta el comando o no 

        //constructor
        public ViewModelCommand(Action<object> executeAction)
        {
            _executeAction = executeAction;
            _canExecuteAction = null;
        }

        public ViewModelCommand(Action<object> executeAction, Predicate<object> canExecuteAction)
        {
            _executeAction = executeAction;
            _canExecuteAction = canExecuteAction;
        }

        //events
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        //Methods
        public bool CanExecute(object parameter)
        {
           return _canExecuteAction == null ? true : _canExecuteAction(parameter);
        }

        public void Execute(object parameter)
        {
            _executeAction(parameter);
        }
    }
}
