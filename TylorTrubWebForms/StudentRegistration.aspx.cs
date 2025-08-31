using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TylorTrubWebForms
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Added missing event handler referenced by DropDownList in markup
        protected void Unnamed10_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle region selection change if needed
            // var ddl = sender as DropDownList;
            // string selected = ddl != null ? ddl.SelectedValue : string.Empty;
        }
    }
}