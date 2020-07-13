using System.Data;
using System.Data.OracleClient;
using System.Windows.Controls;


namespace OnBreak_MDT_V._2
{
    /// <summary>
    /// Lógica de interacción para UserControlListarCliente.xaml
    /// </summary>
    public partial class UserControlListarCliente : UserControl
    {

        OracleConnection oracle = new OracleConnection("DATA SOURCE= XE; PASSWORD = 123; USER ID = SUBSIDIO;");
        public UserControlListarCliente()
        {
            InitializeComponent();

        }

        private void btnCargar_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            oracle.Open();
            OracleCommand command = new OracleCommand("GUARDAR_POSTULACIONES", oracle);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.Add("AP_REGISTROS", OracleType.Cursor).Direction = ParameterDirection.Output;

            OracleDataAdapter adapter = new OracleDataAdapter();
            adapter.SelectCommand = command;
            DataTable table = new DataTable();
            adapter.Fill(table);
            dgListaSubsidios.ItemsSource = table;

            oracle.Close();
        }
    }
}
