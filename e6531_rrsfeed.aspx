<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="e6531_rrsfeed.aspx.cs" Inherits="e6531_rrsfeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XmlDataSource ID="myDataSource" runat="server" XPath="rss/channel/item" />

    
    <asp:Button ID="btnGetliiga" runat="server" OnClick="btnGetLiiga_Click" Text="Liiga" />
        <asp:Button ID="btnGetMS" runat="server" OnClick="btnGetMS_Click" Text="MS" />
        <asp:Button ID="btnGetIS" runat="server" OnClick="btnGetIS_Click" Text="Iltasanomat" />

    <h1><asp:Label ID="lblHeader" runat="server" Text="..." /></h1>
    <asp:Label ID="lblBody" runat="server" Text="..." />
    <asp:Table ID="myDataTable" runat="server" />


    <!--Demo: rsssFeedin haku ilman koodausta -->
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile ="<%$ AppSettings:rssFeeditSF %>" TransformFile ="~/App_Data/rssfeeds.xsl " XPath="rss/channel/item" />
    <asp:GridView ID="GridView" runat="server" DataSourceID ="XmlDataSource2" AutoGenerateColumns="true"></asp:GridView>

</asp:Content>

