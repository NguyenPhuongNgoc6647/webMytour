using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Mytour.database;

namespace Mytour.folder_html
{
    public partial class content_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }
        }
        public void getdata()
        {
            // Lấy dữ liệu hiển thị lên DataGridview
            webMytourEntities db = new webMytourEntities();
            List<Tour> data = db.Tour.ToList<Tour>();
            gridviewTour.DataSource = data;
            //Render
            gridviewTour.DataBind();
        }
    }
}