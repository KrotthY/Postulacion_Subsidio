using BeautySolutions.View.ViewModel;
using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Windows;
using System.Windows.Controls;


namespace OnBreak_MDT_V._2
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        OracleConnection oracle = new OracleConnection("DATA SOURCE= XE; PASSWORD = 123; USER ID = SUBSIDIO;");

        public MainWindow()

        {
            InitializeComponent();

            var menuInicio = new List<SubItem>();
            var item0 = new ItemMenu("Home", menuInicio, PackIconKind.MonitorDashboard);


            var menuCliente = new List<SubItem>();
            menuCliente.Add(new SubItem("Formulario Postulacion", new UserControlAgregarContratos()));
            menuCliente.Add(new SubItem("Informe de Habitabilidad", new UserControlListarCliente()));

            var item1 = new ItemMenu("Postulacion", menuCliente, PackIconKind.Account);


            var menuContrato = new List<SubItem>();
            menuContrato.Add(new SubItem("Datos Postulante", new UserControlCrearCliente()));

            var item2 = new ItemMenu("Informacion", menuContrato, PackIconKind.Information);



            Menu.Children.Add(new UserControlMenuItem(item0, this));
            Menu.Children.Add(new UserControlMenuItem(item1, this));
            Menu.Children.Add(new UserControlMenuItem(item2, this));

        }

        internal void SwitchScreen(object sender)
        {
            var screen = ((UserControl)sender);
            if (screen != null)
            {
                StackPanelMain.Children.Clear();
                StackPanelMain.Children.Add(screen);
            }
        }

        private void ButtonPopUpSalir_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnInicio_Click(object sender, RoutedEventArgs e)
        {

            

            oracle.Open();
            MessageBox.Show("Conectado");

            oracle.Close();



        }

    }



}

public static class MyGlobals
{
    public static string xd;
    public static string rut;
    public static string razon;
    public static string contacto;
    public static string email;
    public static string direccion;
    public static string telefono;
    public static int actividad;
    public static int empresa;
    public static int total;
}

public static class MyGlobalContrato
{
    public static string numero;
    public static DateTime creacion;
    public static DateTime termino;
    public static string rutCliente;
    public static string idModalidad;
    public static int idTipoEvento;
    public static DateTime fechaHoraInicio;
    public static DateTime fechaHoraTermino;
    public static int asistentes;
    public static int personalAdicional;
    public static bool realizado;
    public static double valorTotalContrato;
    public static string observaciones;
}
