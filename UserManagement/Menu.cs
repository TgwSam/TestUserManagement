using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UserManagement
{
    public class Menu
    {
        private string menuId;

        private string menuName;

        private string menuParentId;

        private string menuUrl;

        private string remark;

        private int childAmount;

        //private int menuSeq;

        public string MenuId { get => menuId; set => menuId = value; }
        public string MenuName { get => menuName; set => menuName = value; }
        public string MenuParentId { get => menuParentId; set => menuParentId = value; }
        public string MenuUrl { get => menuUrl; set => menuUrl = value; }
        public string Remark { get => remark; set => remark = value; }
        public int ChildAmount { get => childAmount; set => childAmount = value; }
        //public int MenuSeq { get => MenuSeq; set => MenuSeq = value; }
    }
}