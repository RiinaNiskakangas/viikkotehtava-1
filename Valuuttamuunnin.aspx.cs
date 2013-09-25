using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Valuuttamuunnin : System.Web.UI.Page
{

    int i = 0;
   

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["lkm"] != null)
        {
            i = int.Parse(Session["lkm"].ToString());
        }
        // Use the session variable if there is one (it's nulled when you return back to the previous page)
        if (Session["Name"] != null)
        {
            txtUserName.Text = Session["Name"].ToString();
        }

        else if (Request.Cookies["cookname"]["cook1"] != null)
        {
            this.txtUserName.Text = Request.Cookies["cookname"]["cook1"];
        }

        else
        {
            this.txtUserName.Text = Request.QueryString["Name"];
        }
    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Muunnin_Click(object sender, EventArgs e)
    {      
        
        try
        {           
            Moneyz.Text = (float.Parse(Money.Text) / (float)5.947).ToString();
            i++;
            Session["lkm"] = i;
            lkm.Text = "Laskutoimituksia: " + i;
           
        }
        catch (Exception)
        {
            Moneyz.Text = "Uusi arvo, kiitos:";           
           
        }
       
    }
}