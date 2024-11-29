using MainApp.classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MainApp.view
{
    public partial class Authorization : Form
    {
        public Authorization()
        {
            InitializeComponent();

            try
            {
                Helper.DBRequest = new model.DBConectionRequest();
                MessageBox.Show("Network conection complite");
            }
            catch {
                MessageBox.Show("Network conection error");
            }
        }

        private void Authorization_Load(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //Application.Exit();
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var login = textBox1.Text;
            var password = textBox2.Text;
            var users = Helper.DBRequest.User.ToList();
            var result = users.FirstOrDefault(x => x.UserLogin == login && x.UserPassword == password);

            /*if (result == null)
            { 
                MessageBox.Show("Пользователь не найден");
                return;
            }
            var roles = Helper.DBRequest.Role.ToList();
            MessageBox.Show($"Вы вошли под пользователем с ролью - {result.Role.RoleName.ToLower()}");*/
            ListRequests listRequests = new ListRequests();   //Создали дополнительное окно
            this.Hide();    //Временно скрыли окно авторизации this - ссылка на окно, в котором сейчас находимся
            listRequests.ShowDialog();  //Открыть окно списка
            this.Show();
        }
    }
}
