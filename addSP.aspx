<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="addSP.aspx.cs" Inherits="addSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    <div>
        <p class="bg-primary">Thêm Sản Phẩm</p> 
        </br>
    </div>
    <div class="list">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="IDSANPHAM" DataSourceID="SqlDataSource1" Width="709px" DefaultMode="Insert" OnItemInserted="InsertCmd" OnItemInserting="ItemInserting">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chọn Danh Mục Sản Phẩm:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource12" DataTextField="TENDM" DataValueField="IDDANHMUC" Height="21px" SelectedValue='<%# Bind("IDDANHMUC") %>' Width="166px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDDANHMUC], [TENDM] FROM [DANHMUC]"></asp:SqlDataSource>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mã Sản Phẩm:
                <asp:TextBox ID="MASANPHAMTextBox" runat="server" Text='<%# Bind("MASANPHAM") %>' />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên Sản Phẩm:
                <asp:TextBox ID="TENSANPHAMTextBox" runat="server" Text='<%# Bind("TENSANPHAM") %>' />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giá Sản Phẩm:
                <asp:TextBox ID="GIASANPHAMTextBox" runat="server" Text='<%# Bind("GIASANPHAM") %>' />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mô Tả Sản Phẩm:
                <asp:TextBox ID="MOTASANPHAMTextBox" runat="server" Text='<%# Bind("MOTASANPHAM") %>' />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Ảnh Sản Phẩm:&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<br /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
    </div>
    <div>
        <br />
        <asp:Label ID="errmsg" runat="server" ForeColor="Red"/>  
    </div>
    <div>
        </br>
         <a class="bg-primary" href="productManagment.aspx">Xem Danh Sách Sản Phẩm</a>
    </div>
</asp:Content>

