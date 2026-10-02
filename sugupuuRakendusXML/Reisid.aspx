<%@ Page Title="Kontakt info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reisid.aspx.cs" Inherits="sugupuuRakendusXML.Contact2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
                <div>
            <asp:xml runat="server"
                DocumentSource="~/Reis.xml"
                TransformSource="~/ReisParing.xslt">

            </asp:xml>
        </div>
    </main>

</asp:Content>






