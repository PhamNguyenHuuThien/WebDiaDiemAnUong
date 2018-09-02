using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDiaDiemAnUong.DangNhap
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            Session["ten"] = txtTen.Text;
            Session["pass"] = txtPass.Text;
            Response.Redirect("Nhan.aspx");

          
        }
    }
}