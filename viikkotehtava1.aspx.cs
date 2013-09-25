using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viikkotehtava1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Null the session name (in case you send parameter/cookie info)
        if (Session["Name"] != null)
        {
            Session["Name"] = null;
        }

        // Null the session lkm (for new calculations)
        if (Session["lkm"] != null)
        {
            Session["lmk"] = null;
        }

        if (Request.Cookies["cookname"]["cook1"] != null)
        { 
           Request.Cookies["cookname"]["cook1"] = null; 
        }

        HttpCookie cook = new HttpCookie("cookname");
        cook.Values["cook1"] = this.txtKayttaja.Text;
        cook.Expires.AddHours(1);
        Response.Cookies.Add(cook);

    }
    protected void muunninButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Valuuttamuunnin.aspx?Name=" + this.txtKayttaja.Text);
    }
    protected void sessionButton_Click(object sender, EventArgs e)
    {
        Session["Name"] = txtKayttaja.Text;       
        Response.Redirect("~/Valuuttamuunnin.aspx");
    }
    protected void cookieButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Valuuttamuunnin.aspx");
        Response.Write(Request.Cookies["cookname"]["cook1"]);
    }
    protected void kayttajaTextBox_TextChanged(object sender, EventArgs e)
    {
        
    }
}