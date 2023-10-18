using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserManagement
{
    public partial class testDymaicMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["user"];
            string tmp = "";
            TextBox1.Text = user.UserName + user.UserId + user.LoginName;
            Menu1_DataBound(sender, e);
            csdiv1.InnerHtml = "testdynamicmenupage";
            csdiv1.InnerHtml = "<ul><li>li1</li><li>li2</li><li>li3</li></ul>";
            // get menu data and create list --> html
            string conStr = @"Data Source = CNSH0113\SQLEXPRESS;Initial catalog = testDB;Integrated Security = True";
            SqlConnection SqlCon = new SqlConnection(conStr.ToString());
            SqlCon.Open();
            if (SqlCon.State == ConnectionState.Open)
            {
                Console.WriteLine("数据库已打开");
            }
            string sql = "select * from (select t.*,(select count(*) from T_Menu t1 where t1.MenuParentId = t.MenuId) as sub from T_Menu t ) tt order by remark";
            SqlCommand cmd = new SqlCommand(sql, SqlCon);//创建执行语句
            SqlDataReader dr = cmd.ExecuteReader();
            string lastParentId = null;
            List<Menu> menuList = new List<Menu>();
            csdiv1.InnerHtml = "<ul>";
            while (dr.Read())
            {
                Menu menu = new Menu();
                menu.MenuId = dr["MenuId"].ToString();
                menu.MenuName = dr["MenuName"].ToString();
                menu.MenuParentId = dr["MenuParentId"].ToString();
                menu.MenuUrl = dr["MenuUrl"].ToString();
                menu.Remark = dr["MenuUrl"].ToString();
                menu.ChildAmount = (int)dr["sub"];
                //menu.MenuSeq = (int)dr["MenuSeq"];
                menuList.Add(menu);

                string menuName = dr["MenuName"].ToString();
                string menuUrl = dr["MenuUrl"].ToString();
                string remark = dr["Remark"].ToString();
                string parentId = dr["MenuParentId"].ToString();
                int sub = (int)dr["sub"];
                //string menuId = dr["MenuId"].ToString();

            }
            for (int i = 0; i < menuList.Count; i++)
            {
                if (menuList[i].MenuParentId.Equals(""))
                {
                    csdiv1.InnerHtml += "<li class='label label-default'><a href='" + menuList[i].MenuUrl + "'>" + menuList[i].MenuName + "</a></li>";
                }
                else if (i > 0 && menuList[i].MenuParentId.Equals(menuList[i - 1].MenuId))
                {
                    if (menuList[i].ChildAmount > 0)
                    {
                        csdiv1.InnerHtml += "<ul><li class='label label-default'><a href='" + menuList[i].MenuUrl + "'>" + menuList[i].MenuName + "</a></li>";
                    }
                    else
                    {
                        csdiv1.InnerHtml += "<ul><li class='label label-default'><a href='" + menuList[i].MenuUrl + "'>" + menuList[i].MenuName + "</a></li>";
                    }
                }
                else if (i > 0 && menuList[i].MenuParentId.Equals(menuList[i - 1].MenuParentId))
                {
                    if (menuList[i].ChildAmount > 0)
                    {
                        csdiv1.InnerHtml += "<ul><li class='label label-default'><a href='" + menuList[i].MenuUrl + "'>" + menuList[i].MenuName + "</a></li>";
                    }
                    else
                    {
                        csdiv1.InnerHtml += "<li class='label label-default'><a href='" + menuList[i].MenuUrl + "'>" + menuList[i].MenuName + "</a></li>";
                    }
                }
                else
                {
                    string qqq = menuList[i - 1].Remark;
                    int eee = qqq.Split('-').Length;
                    tmp = "</ul>";
                    for (int k = 2; k < eee; k++)
                    {
                        tmp += "</ul>";
                    }
                    if (menuList[i].ChildAmount > 0)
                    {
                        csdiv1.InnerHtml += tmp + "</ul><li class='label label-default'><a href='" + menuList[i].MenuUrl + "'>" + menuList[i].MenuName + "</a></li>";
                    }
                    else
                    {
                        string qqq2 = menuList[i - 1].Remark;
                        int eee2 = qqq2.Split('-').Length;
                        tmp = "</ul>";
                        for (int k = 2; k < eee; k++)
                        {
                            tmp += "</ul>";
                        }
                        csdiv1.InnerHtml += tmp + "</ul><li class='label label-default'><a href='" + menuList[i].MenuUrl + "'>" + menuList[i].MenuName + "</a></li></ul>";
                    }
                }
            }

            csdiv1.InnerHtml += tmp + "</ul>";
            string xxx = csdiv1.InnerHtml;
            string xxxxxxxxx = null;
            //csdiv1.InnerHtml = menuList.ToString();
            SqlCon.Close();
            if (SqlCon.State == ConnectionState.Closed)
            {
                Console.WriteLine("数据库已关闭");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*
            var connectionString = new SqlConnectionStringBuilder();
            connectionString.DataSource = "127.0.0.1";
            connectionString.UserID = "pasm";
            connectionString.InitialCatalog = "testDB";
            connectionString.Password = "Tgwstart2019";
            connectionString.Encrypt = false;
           */
            string cs = @"Data Source = CNSH0113\SQLEXPRESS; Initial catalog =testDB; Integrated Security = True;";
            //create conn
            IDbConnection connection = new SqlConnection(cs);
            //open conn
            connection.Open();
            var command = connection.CreateCommand();
            command.CommandText = "INSERT INTO T_Menu(MenuName,MenuParentId,MenuUrl,MenuSeq,MenuStatus,CreateBy,CreateTime,UpdateBy,UpdateTime,Remark)values('test7', null, null, null, null, null, null, null, null, null)";
            var row = command.ExecuteNonQuery();
            Console.WriteLine("Hello world");
        }
        protected void Menu1_DataBound(object sender, EventArgs e)
        {
            recursiveMenuVisit(Menu1.Items);
        }

        private void recursiveMenuVisit(MenuItemCollection items)
        {

            MenuItem[] itemsToRemove = new MenuItem[items.Count];
            int i = 0;

            foreach (MenuItem item in items)
            {
                if (item.NavigateUrl.Contains("1-1.aspx"))
                {
                    itemsToRemove[i] = item;
                    i++;
                    Button1.Enabled = false;
                }
                else
                {
                    if (item.ChildItems.Count > 0) recursiveMenuVisit(item.ChildItems);
                }
            }

            for (int j = 0; j < i; j++)
            {
                items.Remove(itemsToRemove[j]);
            }
        }

        public SqlDataReader getDataFromDB(SqlConnection SqlCon, string sql)
        {
            //string conStr = @"Data Source = CNSH0113\SQLEXPRESS;Initial catalog = testDB;Integrated Security = True";
            //SqlConnection SqlCon = new SqlConnection(conStr.ToString());
            //SqlCon.Open();
            //if (SqlCon.State == ConnectionState.Open)
            //{
            //    Console.WriteLine("数据库已打开");
            //}
            //string sql = "INSERT INTO T_Menu(MenuName,MenuParentId,MenuUrl,MenuSeq,MenuStatus,CreateBy,CreateTime,UpdateBy,UpdateTime,Remark)values('test17', null, null, null, null, null, null, null, null, null)";
            //string sql = "select * from T_User where UserId = 1";
            SqlCommand cmd = new SqlCommand(sql, SqlCon);//创建执行语句
            //cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                //xx = dr["MenuName"].ToString();
                //Console.WriteLine("user: " + dr["MenuName"].ToString());
                //user.UserId = (int)dr["UserId"];
                //user.LoginName = dr["LoginName"].ToString();
                //user.UserName = dr["UserName"].ToString();
            }
            //string xxx = user.UserId + user.LoginName + user.UserName;
            //TextBox1.Text = xxx;
            //Session["user"] = user;

            SqlCon.Close();
            if (SqlCon.State == ConnectionState.Closed)
            {
                Console.WriteLine("数据库已关闭");
            }
            return dr;
        }

    }
}