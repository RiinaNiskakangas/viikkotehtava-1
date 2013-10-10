using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.Xml.Linq;
using System.IO;

public partial class e6531_valipalaute : System.Web.UI.Page
{
    string fileLocation=" ";

    protected void Page_Load(object sender, EventArgs e)
    {
        fileLocation = MapPath("~/App_Data/valipalaute.xml");

    }
    protected void btnLaheta_Click(object sender, EventArgs e)
    {
        if (!File.Exists(fileLocation)) 
        { XmlTextWriter writer = new XmlTextWriter(fileLocation, null);
            writer.WriteStartElement("valipalaute"); 
            writer.WriteEndElement(); 
            writer.Close(); 
        }

        //Load existing clients and add new 
        XElement xml = XElement.Load(fileLocation); 
        xml.Add(new XElement("palaute", 
        new XElement("pvm", textPvm.Text),
        new XElement("tekija", textNimi.Text), 
        new XElement("opittu", textHalu.InnerText), 
        new XElement("haluanoppia", textOppi.InnerText), 
        new XElement("hyvaa", textHyva.InnerText), 
        new XElement("parannettavaa", textParannus.InnerText), 
        new XElement("muuta", textMuuta.InnerText))); 
        xml.Save(fileLocation); 
    }

}
