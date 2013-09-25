<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Valuuttamuunnin.aspx.cs" Inherits="Valuuttamuunnin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           
    

     <div style="height: 242px; width: 427px">
    <h1>Teretulemast</h1>
        <asp:TextBox ID="txtUserName" runat="server" Text="" Enabled="False" OnTextChanged="txtUserName_TextChanged" />
    
         <p>
        <asp:TextBox ID="Money" runat="server" Text="" Enabled="True" />
         </p>

         <p>
        <asp:Button ID="Muunnin" runat="server" Text="Markat Euroiksi" OnClick="Muunnin_Click" Width="132px" />    
  </p>
          <p>
        <asp:Label ID="lkm" runat="server" Text="" Enabled="False" />
           </p>
          <p>
         <asp:Label ID="Label1" runat="server" Text="Rahhaa nyt €:" Enabled="False" />
           
          
         <asp:TextBox ID="Moneyz" runat="server" Text="" Enabled="False" Width="177px" />
           </p>
         
    </div>
   



</asp:Content>


