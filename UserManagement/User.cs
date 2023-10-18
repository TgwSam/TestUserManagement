using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UserManagement
{
    public class User
    {
        private int userId;

        private string loginName;

        private string userName;

        public int UserId { get => userId; set => userId = value; }
        public string LoginName { get => loginName; set => loginName = value; }
        public string UserName { get => userName; set => userName = value; }
    }
}