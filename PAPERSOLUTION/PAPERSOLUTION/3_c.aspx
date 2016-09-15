﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_c.aspx.cs" Inherits="PAPERSOLUTION._3_c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" DataKeyNames="Sti_id">
            <Columns>
                <asp:BoundField DataField="Sti_id" HeaderText="Sti_id" ReadOnly="True" SortExpression="Sti_id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ce53ConnectionString %>" DeleteCommand="DELETE FROM [Student_Result] WHERE [Sti_id] = @Sti_id" InsertCommand="INSERT INTO [Student_Result] ([Sti_id], [Name], [Marks]) VALUES (@Sti_id, @Name, @Marks)" SelectCommand="SELECT * FROM [Student_Result]" UpdateCommand="UPDATE [Student_Result] SET [Name] = @Name, [Marks] = @Marks WHERE [Sti_id] = @Sti_id">
            <DeleteParameters>
                <asp:Parameter Name="Sti_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sti_id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Marks" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Marks" Type="Int32" />
                <asp:Parameter Name="Sti_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>