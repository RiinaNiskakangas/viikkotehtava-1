<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="e6531_DBcontrols2.aspx.cs" Inherits="e6531_DBcontrols2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- DataSource määrittely -->
    <asp:SqlDataSource 
        ID="srcMovies" 
        ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=Movie;Persist Security Info=True;User ID=koodari;Password=koodari13"
        SelectCommand="SELECT title, director, year FROM Movies ORDER BY title"
        runat="server">
  </asp:SqlDataSource>
    <h1>DataControls to display a single data item</h1>
    <h2>DetailsView -control</h2>
    <p>Näyttää data html-taulussa, lisääminen ja muokkaus mahdollista</p>

    <asp:DetailsView ID="DetailsView1" DataSourceID="srcMovies" runat="server" AllowPaging="true" />
    
    
    <h2> FromView - control</h2>
    <p>Näyttää data ItemTemplaten avulla</p>
    <asp:FormView ID="FromView1" DataSourceID="srcMovies" runat="server" AllowPaging="true">
        <ItemTemplate>
            <h3>
            <%#Eval("title") %> </h3>directetd by <%#Eval("director")%> at <%#Eval("year")%>

        </ItemTemplate>

    </asp:FormView>


</asp:Content>

