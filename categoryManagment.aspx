<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="categoryManagment.aspx.cs" Inherits="categoryManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    <div class="container">
        <div class="container">
        <div class="row">
				<div class="bg-primary" style="height:77px; font-size:30px;margin:5px">
                    </br>
					<p class="text-center"> TRANG QUẢN TRỊ DANH MỤC SẢN PHẨM</p>
				</div>
		</div>
        <div class="adddmsp">
            <a class="bg-primary" href="addCategory.aspx" >Thêm Danh Mục Sản Phẩm..</a>
            <br />
        </div>
            
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDDANHMUC" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="IDDANHMUC" HeaderText="ID Danh Mục"  InsertVisible="False" ReadOnly="True" SortExpression="IDDANHMUC" >
            <HeaderStyle ForeColor="#FFCC00" />
            <ItemStyle ForeColor="#FFCC00" />
            </asp:BoundField>
            <asp:BoundField DataField="TENDM" HeaderText="Tên Danh Mục" SortExpression="TENDM" >
            <HeaderStyle ForeColor="#FFCC00" />
            <ItemStyle ForeColor="#FFCC00" />
            </asp:BoundField>
            <asp:TemplateField ShowHeader="False" HeaderText="Chức năng">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Bạn có chắc chắn xóa không ?')"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle ForeColor="#FFCC00" />
                <HeaderStyle BackColor="White" ForeColor="#FFCC00" />
                <ItemStyle ForeColor="#FFCC00" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [DANHMUC] WHERE [IDDANHMUC] = @IDDANHMUC" InsertCommand="INSERT INTO [DANHMUC] ([TENDM]) VALUES (@TENDM)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDDANHMUC], [TENDM] FROM [DANHMUC]" UpdateCommand="UPDATE [DANHMUC] SET [TENDM] = @TENDM WHERE [IDDANHMUC] = @IDDANHMUC">
                <DeleteParameters>
                    <asp:Parameter Name="IDDANHMUC" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TENDM" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TENDM" Type="String" />
                    <asp:Parameter Name="IDDANHMUC" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
   </div>
 </div>
</asp:Content>

