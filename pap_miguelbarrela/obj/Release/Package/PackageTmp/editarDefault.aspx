<%@ Page Title="" Language="C#" MasterPageFile="~/cpanel.Master" AutoEventWireup="true" CodeBehind="editarDefault.aspx.cs" Inherits="pap_miguelbarrela.editarDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="editarDefaultSQL">
        <Columns>

            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo"></asp:BoundField>
            <asp:BoundField DataField="texto" HeaderText="texto" SortExpression="texto"></asp:BoundField>
            <asp:BoundField DataField="imagem" HeaderText="imagem" SortExpression="imagem" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="editarDefaultSQL" ConnectionString='<%$ ConnectionStrings:connectionString %>' SelectCommand="SELECT * FROM [tblConteudo] WHERE ([Id] = @Id)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblConteudo] WHERE [Id] = @original_Id AND (([titulo] = @original_titulo) OR ([titulo] IS NULL AND @original_titulo IS NULL)) AND (([texto] = @original_texto) OR ([texto] IS NULL AND @original_texto IS NULL)) AND (([imagem] = @original_imagem) OR ([imagem] IS NULL AND @original_imagem IS NULL))" InsertCommand="INSERT INTO [tblConteudo] ([Id], [titulo], [texto], [imagem]) VALUES (@Id, @titulo, @texto, @imagem)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblConteudo] SET [titulo] = @titulo, [texto] = @texto, [imagem] = @imagem WHERE [Id] = @original_Id AND (([titulo] = @original_titulo) OR ([titulo] IS NULL AND @original_titulo IS NULL)) AND (([texto] = @original_texto) OR ([texto] IS NULL AND @original_texto IS NULL)) AND (([imagem] = @original_imagem) OR ([imagem] IS NULL AND @original_imagem IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_titulo" Type="String" />
            <asp:Parameter Name="original_texto" Type="String" />
            <asp:Parameter Name="original_imagem" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="titulo" Type="String" />
            <asp:Parameter Name="texto" Type="String" />
            <asp:Parameter Name="imagem" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="titulo" Type="String" />
            <asp:Parameter Name="texto" Type="String" />
            <asp:Parameter Name="imagem" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_titulo" Type="String" />
            <asp:Parameter Name="original_texto" Type="String" />
            <asp:Parameter Name="original_imagem" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
