using MainApp.classes;
using MainApp.model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using Status = MainApp.model.Status;

namespace MainApp.view
{
    public partial class ListRequests : Form
    {
        public ListRequests()
        {
            InitializeComponent();

        }

        private void ShowRequests()
        {
            var list = Helper.DBRequest.Request.ToList();
            switch (Helper.User.UserRoleId)
            {
                case 1:     //Заказчик
                            //Отобразить заявки этого заказчика
                    list = list.Where(r => r.RequestUserId == Helper.User.UserId).ToList();
                    break;
                case 2: //Мастер
                        //Отобразить заявки этого мастера
                    list = list.Where(r => r.RequestMasterId == Helper.User.UserId).ToList();
                    buttonEditRequest.Visible = true;    //Доступно редактирование
                    break;
                case 3: //Оператор - доступны все заявки
                        //Доступны кнопки добаления и редактирование
                    buttonEditRequest.Visible = buttonAddRequest.Visible = true;
                    break;
                case 4: //Менеджер - доступны все заявки
                        //Доступна кнопка отчетов
                    buttonReport.Visible = true;
                    break;
            }

            int numberStatus = (int)comboBox1.SelectedIndex;   
            if (numberStatus > 0)
            {
                list = list.Where(r => r.RequestStatusId == numberStatus).ToList();
            }

            if (textBox1.Text != "")
            {
                list = list.Where(r => r.RequestId.ToString().Contains(textBox1.Text)).ToList();
            }

            this.dataGridViewRequests.Rows.Clear();
            int i = 0;      
            foreach (Request request in list)
            {
                this.dataGridViewRequests.Rows.Add();
                dataGridViewRequests.Rows[i].Cells[0].Value = request.RequestId;
                dataGridViewRequests.Rows[i].Cells[1].Value = ((DateTime)request.RequestDate).ToLongDateString();
                dataGridViewRequests.Rows[i].Cells[2].Value = request.Device.DeviceName;
                dataGridViewRequests.Rows[i].Cells[3].Value = request.User.UserFullName;
                dataGridViewRequests.Rows[i].Cells[4].Value = request.Status.StatusName;
                dataGridViewRequests.Rows[i].Cells[5].Value = request.User.UserFullName;
                dataGridViewRequests.Rows[i].Cells[6].Value = request.Stage.StageName;
                i++;        
            }
        }

        private void ListRequests_Load(object sender, EventArgs e)
        {
            var statuses = Helper.DBRequest.Status.ToList();
            statuses.Insert(0, new Status()
            {
                StatusId = 0,
                StatusName = "Все статусы"
            });
            comboBox1.DataSource = statuses;
            comboBox1.DisplayMember = "StatusName";
            comboBox1.ValueMember = "StatusId";
            comboBox1.SelectedIndex = 0;
            ShowRequests();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            ShowRequests();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ShowRequests();
        }
    }
}
