<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registar.aspx.cs" Inherits="pap_miguelbarrela.registar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="content">	
				<article class="topcontent">	
					<header>
						<h2><a href="#" rel="bookmark" title="Permalink to this POST TITLE">
    <asp:Label ID="lblTitulo" runat="server" Text="Registar"></asp:Label></a></h2>
					</header>
					
					<footer>
						<h4><asp:Label ID="lblDadosUtilizador" runat="server" Text="Dados de Utilizador"></asp:Label></h4>
                 
					</footer>
					<table style="width: 100%;">
             
             <tr>
                 <td><asp:Label ID="lblNomeUtilizador" runat="server" Text="Nome de Utilizador"></asp:Label></td>
                 <td><asp:TextBox ID="txtNomeUtilizador" runat="server"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td><asp:Label ID="lblPassowrd" runat="server" Text="Password"></asp:Label></td>
                 <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
                        <tr>
                 <td><asp:Label ID="lblEmail" runat="server" Text="Apelido"></asp:Label></td>
                 <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
                        <tr>
                 <td><asp:Label ID="lblConfirmarPassword" runat="server" Text="Confirmar  Password"></asp:Label></td>
                 <td><asp:TextBox ID="txtConfirmarPassword" runat="server"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
                        <tr>
                 <td><asp:Label ID="lblPerguntaSecreta" runat="server" Text="Pergunta Secreta"></asp:Label></td>
                 <td><asp:DropDownList ID="ddlPerguntaSecreta" runat="server" DataSourceID="perguntaSQL" DataTextField="perguntaSecreta" DataValueField="perguntaSecreta"></asp:DropDownList>
                     <asp:SqlDataSource ID="perguntaSQL" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [tblPerguntaSecreta]"></asp:SqlDataSource>
                    </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td><asp:Label ID="lblRespostaSecreta" runat="server" Text="Resposta Secreta"></asp:Label></td>
                 <td><asp:TextBox ID="txtRespostaSecreta" runat="server"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
         </table>
		<footer>
				<h4><asp:Label ID="lblDadosPessoais" runat="server" Text="Dados Pessoais"></asp:Label></h4>       
		</footer>	
         <table style="width: 100%;">
             <tr>
                 <td><asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label></td>
                 <td><asp:TextBox ID="txtNome" runat="server" ValidateRequestMode="Disabled"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td><asp:Label ID="lblApelido" runat="server" Text="Apelido"></asp:Label></td>
                 <td><asp:TextBox ID="txtApelido" runat="server"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td><asp:Label ID="lblDistrito" runat="server" Text="Distrito"></asp:Label></td>
                 <td><asp:DropDownList ID="ddlDistrito" runat="server" DataSourceID="distritosSQL" DataTextField="Destrito" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
         <asp:SqlDataSource runat="server" ID="distritosSQL" ConnectionString='<%$ ConnectionStrings:distritosConnectionString %>' SelectCommand="SELECT * FROM [Destrito]"></asp:SqlDataSource></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td><asp:Label ID="lblConcelho" runat="server" Text="Concelho"></asp:Label></td>
                 <td><asp:DropDownList ID="ddlConcelho" runat="server" DataSourceID="concelhosSQL" DataTextField="Concelho" DataValueField="Concelho" AutoPostBack="True"></asp:DropDownList>

         <asp:SqlDataSource runat="server" ID="concelhosSQL" ConnectionString='<%$ ConnectionStrings:distritosConnectionString %>' SelectCommand="SELECT [Concelho] FROM [Concelho] WHERE ([id_Destrito] = @id_Destrito)">
             <SelectParameters>
                 <asp:SessionParameter SessionField="idDistrito" DefaultValue="1" Name="id_Destrito" Type="Int32"></asp:SessionParameter>
             </SelectParameters>
         </asp:SqlDataSource></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td><asp:Label ID="lblMorada" runat="server" Text="Morada"></asp:Label></td>
                 <td><asp:TextBox ID="txtMorada" runat="server"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td><asp:Label ID="lblCodigoPostal" runat="server" Text="Código-Postal"></asp:Label></td>
                 <td><asp:TextBox ID="txtCodigoPostal4" runat="server"></asp:TextBox><asp:Label ID="lblCodigoPostal1" runat="server" Text="-"></asp:Label><asp:TextBox ID="txtCodigoPostal3" runat="server"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
             
         </table>
                <asp:Button ID="btnRegistar" runat="server" Text="Registar" OnClick="btnRegistar_Click" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
               
     </article>
       
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
       

		</div>
</asp:Content>
