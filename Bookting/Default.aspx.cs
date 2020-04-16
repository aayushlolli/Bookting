using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Threading;

namespace Bookting
{
    public partial class Default : System.Web.UI.Page
    {

        public MySqlConnection connection;
        public MySqlDataReader read;
       
        public bool found = false;
        string username = "";
        string password = "";
        string role = "";
        
        


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            


            string query = "Select * From users";
            Connection(query);

            

            while (read.Read())
            {
                username = read.GetValue(1).ToString();
                password = read.GetValue(2).ToString();
                role = read.GetValue(3).ToString();

                if ((username == txtUsername.Text && password == txtPassword.Text))
                {
                    found = true;
                    break;
                }
            }

            if (found)
            {
                lblStatus.Text = "Access Granted";
            }
            else
            {
                lblStatus.Text = "Access Denied";
            }

            

            if (lblStatus.Text == ("Access Granted") && role == ("customer"))
            {
                
                    Session["Username"] = read["username"].ToString();
                    Response.Redirect("customer.aspx");
                
                

            }
            else if(lblStatus.Text == ("Access Granted") && role == ("admin"))
            {
                Session["Username"] = read["username"].ToString();
                Response.Redirect("admin.aspx");
                
            }
        }
        
        public void Connection(string query)
        {
            try
            {
                connection = new MySqlConnection("server=localhost;uid=root;pwd=;database=acc_system;");
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                read = cmd.ExecuteReader();
                
              
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert("+ex+");</script>");

            }


        }

        public string encryptpass(string password)
        {
            string msg = "";
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            msg = Convert.ToBase64String(encode);
            return msg;
        }

    }

    
}