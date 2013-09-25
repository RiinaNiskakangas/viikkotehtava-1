<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="e6531_LocalDBDemo.aspx.cs" Inherits="e6531_LocalDBDemo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


       <div>
    <h1>Videot</h1>
        <asp:Button ID="btnGetMovies" runat="server" Text="Hae Elokuvat" OnClick="btnGetMovies_Click1" />
        <asp:DataList ID ="myDataList" runat="server">
            <ItemTemplate><%#Eval("Title") %> ohjannut <%#Eval("Director") %></ItemTemplate>

        </asp:DataList>
    </div>
   


</asp:Content>