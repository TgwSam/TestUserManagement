using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserManagement
{
    public partial class testErrorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Menu1_DataBound(sender, e);
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

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
    }
}