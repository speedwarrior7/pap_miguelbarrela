<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pap_miguelbarrela_gogogo.index" %>
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
                        <p>
        <asp:Label ID="lblTexto" runat="server" Text=""></asp:Label></p>
						
                        				</div>
					<div class="flexslider">
  <ul class="slides">
    <li>
        <asp:Image ID="Image1" runat="server" ImageUrl="img/CADEIRA.JPG"/> 
        
 
    </li>
    <li>
       
        <asp:Image ID="Image2" runat="server" ImageUrl="img/CADEIRA2.JPG" />
    </li>

  </ul>
</div>
				</article>
       
     
       

		</div>
			
					
</asp:Content>
