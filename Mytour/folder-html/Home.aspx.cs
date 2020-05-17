using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mytour.database;

namespace Mytour.folder_html
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            webMytourEntities mytourEntities = new webMytourEntities();
            Tour t = new Tour();
           
        }
    }
}