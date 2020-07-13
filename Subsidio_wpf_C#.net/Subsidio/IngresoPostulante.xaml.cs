using System.Data;
using System.Data.OracleClient;
using System.Windows;
using System.Windows.Controls;




namespace OnBreak_MDT_V._2
{
    /// <summary>
    /// Lógica de interacción para UserControlAgregarContratos.xaml
    /// </summary>
    public partial class UserControlAgregarContratos : UserControl
    {

        OracleConnection oracle = new OracleConnection("DATA SOURCE= XE; PASSWORD = 123; USER ID = SUBSIDIO;");
        public UserControlAgregarContratos()
        {
            InitializeComponent();



        }

        private void btnGuardar_Click(object sender, RoutedEventArgs e)
        {
            oracle.Open();
            OracleCommand command = new OracleCommand("GUARDAR_POSTULACIONES", oracle);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.Add("AP_REGISTROS",OracleType.Cursor).Direction = ParameterDirection.Output;

            OracleDataAdapter adapter = new OracleDataAdapter();
            adapter.SelectCommand = command;
            DataTable table = new DataTable();
            adapter.Fill(table);
            

            oracle.Close();




        }
    }
}








