<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="addSP.aspx.cs" Inherits="addSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    <div class="themsp">
        Thêm Sản Phẩm
        </br>
    </div>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="IDSANPHAM" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            IDSANPHAM:
            <asp:Label ID="IDSANPHAMLabel1" runat="server" Text='<%# Eval("IDSANPHAM") %>' />
            <br />
            IDDANHMUC:
            <asp:TextBox ID="IDDANHMUCTextBox" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
            <br />
            MASANPHAM:
            <asp:TextBox ID="MASANPHAMTextBox" runat="server" Text='<%# Bind("MASANPHAM") %>' />
            <br />
            TENSANPHAM:
            <asp:TextBox ID="TENSANPHAMTextBox" runat="server" Text='<%# Bind("TENSANPHAM") %>' />
            <br />
            GIASANPHAM:
            <asp:TextBox ID="GIASANPHAMTextBox" runat="server" Text='<%# Bind("GIASANPHAM") %>' />
            <br />
            MOTASANPHAM:
            <asp:TextBox ID="MOTASANPHAMTextBox" runat="server" Text='<%# Bind("MOTASANPHAM") %>' />
            <br />
            URL:
            <asp:TextBox ID="URLTextBox" runat="server" Text='<%# Bind("URL") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            IDDANHMUC:
            <asp:TextBox ID="IDDANHMUCTextBox" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
            <br />
            MASANPHAM:
            <asp:TextBox ID="MASANPHAMTextBox" runat="server" Text='<%# Bind("MASANPHAM") %>' />
            <br />
            TENSANPHAM:
            <asp:TextBox ID="TENSANPHAMTextBox" runat="server" Text='<%# Bind("TENSANPHAM") %>' />
            <br />
            GIASANPHAM:
            <asp:TextBox ID="GIASANPHAMTextBox" runat="server" Text='<%# Bind("GIASANPHAM") %>' />
            <br />
            MOTASANPHAM:
            <asp:TextBox ID="MOTASANPHAMTextBox" runat="server" Text='<%# Bind("MOTASANPHAM") %>' />
            <br />
            URL:
            <asp:TextBox ID="URLTextBox" runat="server" Text='<%# Bind("URL") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            IDSANPHAM:
            <asp:Label ID="IDSANPHAMLabel" runat="server" Text='<%# Eval("IDSANPHAM") %>' />
            <br />
            IDDANHMUC:
            <asp:Label ID="IDDANHMUCLabel" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
            <br />
            MASANPHAM:
            <asp:Label ID="MASANPHAMLabel" runat="server" Text='<%# Bind("MASANPHAM") %>' />
            <br />
            TENSANPHAM:
            <asp:Label ID="TENSANPHAMLabel" runat="server" Text='<%# Bind("TENSANPHAM") %>' />
            <br />
            GIASANPHAM:
            <asp:Label ID="GIASANPHAMLabel" runat="server" Text='<%# Bind("GIASANPHAM") %>' />
            <br />
            MOTASANPHAM:
            <asp:Label ID="MOTASANPHAMLabel" runat="server" Text='<%# Bind("MOTASANPHAM") %>' />
            <br />
            URL:
            <asp:Label ID="URLLabel" runat="server" Text='<%# Bind("URL") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [SANPHAM] WHERE [IDSANPHAM] = @IDSANPHAM" InsertCommand="INSERT INTO [SANPHAM] ([IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL]) VALUES (@IDDANHMUC, @MASANPHAM, @TENSANPHAM, @GIASANPHAM, @MOTASANPHAM, @URL)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDSANPHAM], [IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL] FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [IDDANHMUC] = @IDDANHMUC, [MASANPHAM] = @MASANPHAM, [TENSANPHAM] = @TENSANPHAM, [GIASANPHAM] = @GIASANPHAM, [MOTASANPHAM] = @MOTASANPHAM, [URL] = @URL WHERE [IDSANPHAM] = @IDSANPHAM">
        <DeleteParameters>
            <asp:Parameter Name="IDSANPHAM" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDDANHMUC" Type="Int32" />
            <asp:Parameter Name="MASANPHAM" Type="String" />
            <asp:Parameter Name="TENSANPHAM" Type="String" />
            <asp:Parameter Name="GIASANPHAM" Type="Int32" />
            <asp:Parameter Name="MOTASANPHAM" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDDANHMUC" Type="Int32" />
            <asp:Parameter Name="MASANPHAM" Type="String" />
            <asp:Parameter Name="TENSANPHAM" Type="String" />
            <asp:Parameter Name="GIASANPHAM" Type="Int32" />
            <asp:Parameter Name="MOTASANPHAM" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="IDSANPHAM" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

