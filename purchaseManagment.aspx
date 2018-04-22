<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="purchaseManagment.aspx.cs" Inherits="purchaseManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    <h4>Quản Lý Hóa Đơn</h4>
    <div class="qlHD">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDCHITIETHOADON" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="IDCHITIETHOADON" HeaderText="IDCHITIETHOADON" InsertVisible="False" ReadOnly="True" SortExpression="IDCHITIETHOADON" />
                <asp:BoundField DataField="IDHOADON" HeaderText="IDHOADON" SortExpression="IDHOADON" />
                <asp:BoundField DataField="IDSANPHAM" HeaderText="IDSANPHAM" SortExpression="IDSANPHAM" />
                <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [CHITIETHOADON] WHERE [IDCHITIETHOADON] = @IDCHITIETHOADON" InsertCommand="INSERT INTO [CHITIETHOADON] ([IDHOADON], [IDSANPHAM], [AMOUNT]) VALUES (@IDHOADON, @IDSANPHAM, @AMOUNT)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDCHITIETHOADON], [IDHOADON], [IDSANPHAM], [AMOUNT] FROM [CHITIETHOADON]" UpdateCommand="UPDATE [CHITIETHOADON] SET [IDHOADON] = @IDHOADON, [IDSANPHAM] = @IDSANPHAM, [AMOUNT] = @AMOUNT WHERE [IDCHITIETHOADON] = @IDCHITIETHOADON">
            <DeleteParameters>
                <asp:Parameter Name="IDCHITIETHOADON" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IDHOADON" Type="Int32" />
                <asp:Parameter Name="IDSANPHAM" Type="Int32" />
                <asp:Parameter Name="AMOUNT" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IDHOADON" Type="Int32" />
                <asp:Parameter Name="IDSANPHAM" Type="Int32" />
                <asp:Parameter Name="AMOUNT" Type="Int32" />
                <asp:Parameter Name="IDCHITIETHOADON" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

