<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="e6531_valipalaute.aspx.cs" Inherits="e6531_valipalaute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Anna Palautetetta</h1>
    <div>
        Päivämäärä(DD.MM.VVVV):<br />  <asp:TextBox ID="textPvm" runat="server"></asp:TextBox><br />
        <asp:RegularExpressionValidator id="txtZIP_validation" runat="server" ControlToValidate="textPvm" ErrorMessage="Giev päivämäärä."  ValidationExpression="^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\d\d$" ForeColor="Red"> </asp:RegularExpressionValidator><br />
       
         Nimi: <br /> <asp:TextBox ID="textNimi" runat="server"></asp:TextBox><br />
        <asp:RegularExpressionValidator ID="regval1" runat="server" ControlToValidate="textNimi" ValidationExpression="[a-zA-Z.\s]{1,40}$" ErrorMessage="Ee ole nimi." ForeColor="Red"/><br />
       
         Olen oppinut:  <br /><textarea ID="textOppi" cols="20" rows="2" runat="server"></textarea><br />
         <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="textOppi" ErrorMessage="Et ole oppinut mitään?" ForeColor="Red"></asp:RequiredFieldValidator><br />
       
         Haluan oppia: <br /> <textarea ID="textHalu" cols="20" rows="2" runat="server"></textarea><br />
          <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="textHalu" ErrorMessage="Et halua mitään? :(" ForeColor="Red"></asp:RequiredFieldValidator><br />
       
         Hyvää: <br /> <textarea id="textHyva" cols="20" rows="2" runat="server"></textarea><br />
         <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="textHyva" ErrorMessage="Eikö mitään hyvää?!" ForeColor="Red"></asp:RequiredFieldValidator><br />
       
         Parannettavaa: <br /> <textarea id="textParannus" cols="20" rows="2" runat="server"></textarea><br />
          <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="textParannus" ErrorMessage="No kai jotain huonoa on?" ForeColor="Red"></asp:RequiredFieldValidator><br />
       
         Muuta: <br /> <textarea id="textMuuta" cols="20" rows="2" runat="server"></textarea><br />
        <br /> 
        <asp:Button ID="btnLaheta" runat="server" Text="Lähetä palaute" OnClick="btnLaheta_Click" /><br /><br />
    </div>

</asp:Content>

