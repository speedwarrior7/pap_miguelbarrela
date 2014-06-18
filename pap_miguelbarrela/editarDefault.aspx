<%@ Page Title="" Language="C#" MasterPageFile="~/cpanel.Master" AutoEventWireup="true" CodeBehind="editarDefault.aspx.cs" Inherits="pap_miguelbarrela.editarDefault" %>

<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="HTMLEditor" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content" style="width:100%">
        <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </ajaxToolkit:ToolkitScriptManager>

        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
            <ajaxToolkit:TabPanel runat="server" HeaderText="Texto" ID="TabPanel1">
                <ContentTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <asp:Label ID="lblTitulo" runat="server" Text="Titulo:         "></asp:Label>
                                <asp:TextBox ID="txtTitulo" runat="server" Width="400px"></asp:TextBox></td>

                        </tr>
                        <tr>
                            <td>
                                <HTMLEditor:Editor runat="server"
                                    Height="300px"
                                    Width="100%"
                                    AutoFocus="true"
                                    ID="Editor1" />
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td style="float: right">
                                <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="btnSave_Click" /></td>

                        </tr>

                    </table>
                </ContentTemplate>

            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" HeaderText="Imagens" ID="TabPanel2">
                <ContentTemplate>

                    <asp:Label ID="lblNumImagens" runat="server" Text=""></asp:Label><asp:Button ID="btnRemove" runat="server" Text="-1"  OnClick="btnDelImagem_Click"/><asp:Button ID="btnAdd" runat="server" Text="+1" OnClick="btnAddImagem_Click" />
                    <style>
                        .divFlexSlider ul td{min-width:400px;}

                        .divFlexSlider img{width:200px;height:200px;}
                    </style>
                   <div id="divFlexSlider" class="divFlexSlider" runat="server">
                     
                   </div>                   

                   
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>


    </div>
</asp:Content>
