<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="izvestaj.aspx.cs" Inherits="DomaciLPgit.izvestaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Izvestaj</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%@ PreviousPageType VirtualPath="~/prijava.aspx" %>
            <asp:Label ID="lblRezultat" runat="server" />
        </div>
    </form>
</body>
</html>