using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace UserManagement
{
    public partial class testWebFormPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var culture = RadioButtonList1.SelectedValue;
            //Server.Transfer("testPage1.aspx?culture=en-US", true);
            Server.Transfer("testPage1.aspx"+ "?culture="+ culture, true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            User user = new User();
            string conStr = @"Data Source = CNSH0113\SQLEXPRESS;Initial catalog = testDB;Integrated Security = True";
            SqlConnection SqlCon = new SqlConnection(conStr.ToString());
            SqlCon.Open();
            if (SqlCon.State == ConnectionState.Open)
            {
                Console.WriteLine("数据库已打开");
            }
            //string sql = "INSERT INTO T_Menu(MenuName,MenuParentId,MenuUrl,MenuSeq,MenuStatus,CreateBy,CreateTime,UpdateBy,UpdateTime,Remark)values('test17', null, null, null, null, null, null, null, null, null)";
            string sql = "select * from T_User where UserId = 1";
            SqlCommand cmd = new SqlCommand(sql, SqlCon);//创建执行语句
            //cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                //xx = dr["MenuName"].ToString();
                //Console.WriteLine("user: " + dr["MenuName"].ToString());
                user.UserId =(int)dr["UserId"];
                user.LoginName = dr["LoginName"].ToString();
                user.UserName = dr["UserName"].ToString();
            }
            string xxx = user.UserId + user.LoginName + user.UserName;
            TextBox1.Text = xxx;
            Session["user"] = user;

            SqlCon.Close();
            if (SqlCon.State == ConnectionState.Closed)
            {
                Console.WriteLine("数据库已关闭");
            }
            Server.Transfer("testDymaicMenu.aspx" , true);
        }
    }
}