<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="addCategory.aspx.cs" Inherits="addCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    <div>
        <p class="bg-primary">Thêm Danh Mục Sản Phẩm</p>
        </br>
    </div>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="IDDANHMUC" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="InsertCmd">
        <EditItemTemplate>
            IDDANHMUC:
            <asp:Label ID="IDDANHMUCLabel1" runat="server" Text='<%# Eval("IDDANHMUC") %>' />
            <br />
            TENDM:
            <asp:TextBox ID="TENDMTextBox" runat="server" Text='<%# Bind("TENDM") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên Danh Mục :&nbsp;&nbsp;
            <asp:TextBox ID="TENDMTextBox" runat="server" Text='<%# Bind("TENDM") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            IDDANHMUC:
            <asp:Label ID="IDDANHMUCLabel" runat="server" Text='<%# Eval("IDDANHMUC") %>' />
            <br />
            TENDM:
            <asp:Label ID="TENDMLabel" runat="server" Text='<%# Bind("TENDM") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
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
    <div>
        <br />
        <asp:Label ID="errmsg" runat="server" ForeColor="Red"/>  
    </div>
     <div>
        </br>
         <a class="bg-primary" href="categoryManagment.aspx">Xem Danh Sách Danh Mục Sản Phẩm</a>
    </div>
</asp:Content>

