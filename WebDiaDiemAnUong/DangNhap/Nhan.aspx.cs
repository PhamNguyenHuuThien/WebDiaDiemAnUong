using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDiaDiemAnUong.DangNhap
{
    public partial class Nhan : System.Web.UI.Page
    {
        protected string chao;
        protected void Page_Load(object sender, EventArgs e)
        {
            string ten = Session["ten"].ToString();
            string pass = Session["pass"].ToString();
            //Response.Write("Chào bạn: " + ten + "<br />Pass: " + pass);
            chao = "Chào bạn: " + ten + "<br />Pass: " + pass +" đã lưu được tên";
            HttpCookie cookie = new HttpCookie("TenDangNhap");
            cookie.Value = ten;
            cookie.Expires = DateTime.Now.AddDays(2);
            Response.Cookies.Add(cookie);
        }
    }
}