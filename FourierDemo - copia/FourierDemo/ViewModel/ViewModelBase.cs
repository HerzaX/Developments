using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;

namespace FourierDemo.ViewModel
{
    //se hace abstracta la clase para poder ser usada mediante la herencia 
    public abstract class ViewModelBase : INotifyPropertyChanged //implementacion de la interfaz
        //la interfaz notifica al cliente cualquier cambio que se a realizado a la pripiedad y
        //debe volver a evaluar sus valores
    {
        public event PropertyChangedEventHandler PropertyChanged;

        //se define un evento para evaluar si la propiedad se ha cambiado
        public void OnPropertyChanged(string propertyName) 
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
