<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sobre.aspx.cs" Inherits="pap_miguelbarrela.sobre" %>
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
						<p class="post-info"></p>
					</footer>
					
					<div>
                         <p><asp:Label ID="lblTexto" runat="server" Text=""></asp:Label></p>
                        
					</div>
				<header>
						<h2><a href="#" rel="bookmark" title="Permalink to this POST TITLE">First post</a></h2>
					</header>

					<footer>
						<p class="post-info">This was posted on the 5th of March 2013 by Christian Vasile</p>
					</footer>
					
					<p></p>	
					</article>
         <article class="bottomcontent">	
					<header>
						<h2><a href="#" rel="bookmark" title="Permalink to this POST TITLE">Outros produtos</a></h2>
					</header>
					
					<footer>
						
                        <p class="post-info">Todos os artigos abaixo são da autoria de Filipa Barrela.</p>
                    </footer>
            <img src="img/CADEIRA.JPG" />
            <img src="img/CADEIRA.JPG" />
            </article>
		</div>
		
</asp:Content>
