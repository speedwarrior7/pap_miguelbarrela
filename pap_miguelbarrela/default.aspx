<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pap_miguelbarrela.index" %>



<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="HTMLEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <article class="topcontent">
          
            <header>
                <h2><a href="#" rel="bookmark" title="Permalink to this POST TITLE">
                    <asp:Label ID="lblTitulo" runat="server" Text=""></asp:Label></a></h2>
            </header>

            <footer>
            </footer>

            <div>
                <p></p>

            </div>


            <asp:Label ID="lblTexto" runat="server" Text=""></asp:Label>
            
            <div class="flexslider">


                
                    <div id="d" runat="server">
                        <asp:Label ID="lblFlexSlider" runat="server" Text="Label"></asp:Label></div>
                

            </div>

        </article>




    </div>


</asp:Content>
