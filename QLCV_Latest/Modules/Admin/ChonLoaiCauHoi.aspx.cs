using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPanel.Modules.QuanLyBaiThi
{
    public partial class ChonLoaiCauHoi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTracNghiem_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("TaoCauHoiTracNghiem.aspx"));
        }

        protected void btnTuLuan_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("TaoCauHoiTuLuan.aspx"));
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("MenuChon.aspx"));
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("MenuChon.aspx"));
        }
    }
}