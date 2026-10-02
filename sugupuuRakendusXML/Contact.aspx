<%@ Page Title="Kontakt info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="sugupuuRakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Mark Jurgen</h3>
        <address>
            Õpetaja poolt proovitud XSLT funktsioonid
        </address>

                <div>
            <asp:xml runat="server"
                DocumentSource="~/JurgenSugupuu.xml"
                TransformSource="~/sugupuuParing.xslt">

            </asp:xml>
        </div>


        <address>
        </address>
    </main>
</asp:Content>



