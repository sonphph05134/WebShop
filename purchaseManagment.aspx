<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="purchaseManagment.aspx.cs" Inherits="purchaseManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
     <div class="container">
        <div class="row">
				<div class="bg-primary" style="height:77px; font-size:30px;margin:5px">
                    </br>
					<p class="text-center"> TRANG QUẢN TRỊ ĐƠN HÀNG</p>
				</div>
		</div>
        <div class="addhd">
            <a class="bg-primary" href="addPurchase.aspx">Thêm Đơn Hàng</a>
            <br />
        </div>
    <div class="qlHD">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDHOADON" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="IDHOADON" HeaderText="ID Hóa Đơn" InsertVisible="False" ReadOnly="True" SortExpression="IDHOADON" />
                <asp:BoundField DataField="IDNGUOIDUNG" HeaderText="ID Người Dùng" SortExpression="IDNGUOIDUNG" />
                <asp:BoundField DataField="MAHOADON" HeaderText="Mã Hóa Đơn" SortExpression="MAHOADON" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Bạn có chắc chắn xóa không ?')"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [HOADON] WHERE [IDHOADON] = @IDHOADON" InsertCommand="INSERT INTO [HOADON] ([IDNGUOIDUNG], [MAHOADON]) VALUES (@IDNGUOIDUNG, @MAHOADON)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDHOADON], [IDNGUOIDUNG], [MAHOADON] FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [IDNGUOIDUNG] = @IDNGUOIDUNG, [MAHOADON] = @MAHOADON WHERE [IDHOADON] = @IDHOADON">
            <DeleteParameters>
                <asp:Parameter Name="IDHOADON" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IDNGUOIDUNG" Type="Int32" />
                <asp:Parameter Name="MAHOADON" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IDNGUOIDUNG" Type="Int32" />
                <asp:Parameter Name="MAHOADON" Type="String" />
                <asp:Parameter Name="IDHOADON" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
         </br>
</asp:Content>

