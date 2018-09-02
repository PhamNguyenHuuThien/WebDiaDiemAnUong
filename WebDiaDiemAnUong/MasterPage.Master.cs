using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDiaDiemAnUong
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected string Ten;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ck = Request.Cookies["TenDangNhap"];
            try
            {
                string s = ck.Value;
                //string s = "hi";
                Ten = "Xin chào " + s + "!!";
                // Response.Write("Chào bạn!!"+ Ten);
            }
            catch { }

        }
    }
}