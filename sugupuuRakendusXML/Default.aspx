<%@ Page Title="Teooria" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="sugupuuRakendusXML._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">XML - Extensible Markup Language</h1>
            <p class="lead">XML kirjeldab kuidas andmed on oma vahel seotud.
                <br />XML tuleb deklarerida
                <br />API kastavad XML faile
                <br />RSS-uudised hoiatakse XML-ina
                <br />KML kaardid põhinevad XML lil
                <br />kasutame süsteemide andmevahetusel
            </p>
        </section>

                <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">XSLT - Extensible Stylesheet Language Trasnformations</h1>
            <p class="lead">XSLT muudab andmeid XML failist.
                <br />XML -->XSLT<-->HTML-->veebileht
                <br />XML -->XSLT<-->.aspx leht-->veebileht
                <br />XML -->XSLT<--> csv fail-->Excel
                <br />XML -->XSLT<-->XML--> teine süsteem
            </p>
                    <h2>XSLT funktsioonid</h2>
                    <br />count() - arvutab kogus
                    <br />substring(nimi, 1, 1) - eraldab nimest esimene 1.täht
                    <br />string-lengnt(nimi) - sümboolite arv
                    <br />start-with(nimi, 'A') - tekstikontroll
                    <br />last() - viimase järjekorranumber 
                    <br />position() - jooksva järjekorranumber
                    <br />not(), true(), false()
                    <br />normalize-space() - võtab tühikud ja muud vahed ära
                    <br />translate(nimi, algsümboolid, lõppsümboolid) - asendab tähed ---> 
                    translate(kass, 'ss', 'tt') ----> katt
        </section>

    </main>

</asp:Content>
