using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Your server-side code

            // Endpoint to handle AJAX request
            if (Request.QueryString["action"] == "loadData")
            {
                // Simulate loading data from the server (replace with your logic)
                string loadedData = "Data loaded from the server.";

                // Return the loaded data
                Response.Write(loadedData);
                Response.End();
            }
        }

        protected void btnShowModal_Click(object sender, EventArgs e)
        {

        }
    }
}