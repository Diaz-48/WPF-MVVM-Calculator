using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Lab_4_Part_1
{
    public class ViewModel : INotifyPropertyChanged
    {
        public ICommand MyCommandSum { get; set; }
        public ICommand MyCommandSubtract { get; set; }
        public ICommand MyCommandMultiply { get; set; }
        public ICommand MyCommandDivide { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string propertyname)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyname));
            }
        }

        private string _number1;
        private string _number2;
        private string result;

        public string Number1
        {
            get { return _number1; }
            set { _number1 = value; OnPropertyChanged("Number1"); }
        }

        public string Number2
        {
            get { return _number2; }
            set
            {
                _number2 = value; OnPropertyChanged("Number2");
            }
        }

        public string Result
        {
            get { return result; }
            set
            {
                result = value; OnPropertyChanged("Result");
            }
        }

        public ViewModel()
        {
            MyCommandSum = new RelayCommand(sum, canexecute);
            MyCommandSubtract = new RelayCommand(subtract, canexecute);
            MyCommandMultiply= new RelayCommand(multiply, canexecute);
            MyCommandDivide = new RelayCommand(divide, canexecute);
        }

        private bool canexecute(object parameter)
        {
            if (!string.IsNullOrEmpty(Number1) && !string.IsNullOrEmpty(Number2))
            {
                return true;
            }
            return false;

        }
        private void sum(object parameter)
        {
            result = (Convert.ToDouble(Number1) + Convert.ToDouble(Number2)).ToString();
            OnPropertyChanged("Result");
        }

        private void subtract(object parameter)
        {
            result = (Convert.ToDouble(Number1) - Convert.ToDouble(Number2)).ToString();
            OnPropertyChanged("Result");
        }

        private void multiply(object parameter)
        {
            result = (Convert.ToDouble(Number1) * Convert.ToDouble(Number2)).ToString();
            OnPropertyChanged("Result");
        }

        private void divide(object parameter)
        {
            result = (Convert.ToDouble(Number1) / Convert.ToDouble(Number2)).ToString();
            OnPropertyChanged("Result");
        }

    }
}
