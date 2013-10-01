<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="e6531_xmlreader.aspx.cs" Inherits="e6531_xmlreader" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>RocoPecords proudly presents</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XmlDataSource ID="myRecords" DataFile="~/app_Data/Records.xml" runat="server" TransformFile="~/App_Data/Records.xsl"> </asp:XmlDataSource>
    <asp:XmlDataSource ID="myRecords1" DataFile="~/app_Data/Records.xml" runat="server" > </asp:XmlDataSource>
    <asp:XmlDataSource ID="myRecords2" DataFile="~/app_Data/Records2.xml" runat="server" > </asp:XmlDataSource>
    <h1>Osta levy</h1>
    <asp:GridView ID="gvLevyt" DataSourceID="MyRecords" runat="server" AutoGenerateColumns="true"></asp:GridView>


</asp:Content>




