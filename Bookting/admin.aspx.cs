using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bookting;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;

namespace Bookting
{
    public partial class Customer : System.Web.UI.Page
    {

        MySqlConnection connection = new MySqlConnection("server=localhost;uid=root;pwd=;database=acc_system;");
        
        



        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null && Session["User_id"] == null)
            {
                Response.Redirect("default.aspx");
            }

            lblID.Text = "User ID = "+ Session["User_id"].ToString();
            lblName.Text = Session["Username"].ToString();

            ddBusName.Items.Clear();

            //string query2 = "Select business_name From clients Where user_id=" + Session["User_id"] + ";";
            //Connection(query2);

            //while (read.Read())
            //{
            //    ddBusName.Items.Add(read.GetValue(4).ToString());




            //}

            
            using (MySqlConnection connection = new MySqlConnection("server=localhost;uid=root;pwd=;database=acc_system;"))
            {
                using (MySqlCommand cmd = new MySqlCommand("Select business_name From clients Where user_id=" + Session["User_id"] + ";"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;
                    connection.Open();
                    ddBusName.DataSource = cmd.ExecuteReader();
                    ddBusName.DataTextField = "business_name";
                    
                    ddBusName.DataBind();
                    connection.Close();
                }
               
            }
            





        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("default.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {
                string query1 = "INSERT INTO data (business_name, processing_month, financial_period, transaction_date, transaction_amount, target_account, target_acc_desc, target_acc_effect, contra_account, contra_acc_desc, contra_acc_effect, tax_effect)" +
                "Values ('" + ddBusName.Text + "' , '" + ddProcessingMonth.Text + "', '" + ddFinancialPeriod.Text + "', '" + txtTransDate.Text + "', '" + "R" + txtTransAmount.Text + "', '" + ddTargetAcc.Text + "', '" + ddTargetDesc.Text + "', '" + rbTargetEffect.Text + "', '" + ddContraAcc.Text + "', '" + ddContraDesc.Text + "', '" + rbContraEffect.Text + "', '" + ddTaxEffect.Text + "');";

                Connection(query1);
                lblStatus.Text = "Successfully Saved";
                //Server.TransferRequest(Request.Url.AbsolutePath, false);

            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            


        }



        public void Connection(string query)
        {
            try
            {
                connection = new MySqlConnection("server=localhost;uid=root;pwd=;database=acc_system;");
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                MySqlDataReader read = cmd.ExecuteReader();

                
            }
            catch (Exception ex)
            {
                Response.Write(ex);

            }


        }

    }
}