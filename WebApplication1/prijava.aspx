﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="DomaciLPgit.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pijava</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PRIJAVA</h1>
            Ime i prezime:
 <asp:TextBox ID="tbime"
     Validationgroup="Group1"
     runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="valime"
     ErrorMessage="Moras da popunis polje!"
     ControlToValidate="tbime"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="true"
     ValidationGroup="Group1"
     EnableClientScript="false"
     runat="server"></asp:RequiredFieldValidator>
 <br />
 Email:
 <asp:TextBox ID="tbemail"
     ValidationGroup="Group1"
     runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="valemail"
     ErrorMessage="Moras da popunis polje!"
     ControlToValidate="tbemail"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="true"
     ValidationGroup="Group1"
     EnableClientScript="false"
     runat="server"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="expvalemail"
     ErrorMessage="Email nije u ispravnom formatu!"
     ControlToValidate="tbemail"
     ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="true"
     ValidationGroup="Group1"
     EnableClientScript="false"
     runat="server"></asp:RegularExpressionValidator>
 <br />
 Potvrdi email:
 <asp:TextBox ID="tbemailconf"
     ValidationGroup="Group1"
     TextMode="Email"
     runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="valemailconf"
     ErrorMessage="Obavezno je ponovo ukucati email!"
     ControlToValidate="tbemailconf"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="true" 
     ValidationGroup="Group1"
     EnableClientScript="false"
     runat="server"></asp:RequiredFieldValidator>
 <asp:CompareValidator ID="valporediemail"
     ErrorMessage="Email adrese se ne poklapaju!"
     ControlToCompare="tbemailconf"
     ControlToValidate="tbemail"
     Display="Static"
     ForeColor="Red"
     SetFocusOnError="true" 
     ValidationGroup="Group1"
     EnableClientScript="false"
     runat="server"></asp:CompareValidator>
 <br />
  Godina:
  <asp:TextBox ID="tbgodina" runat="server" ValidationGroup="Group1"></asp:TextBox>
  <asp:RequiredFieldValidator  ID ="valgodina"  
      ErrorMessage="Moras da popunis polje!" 
      ControlToValidate="tbgodina"
      Display="Static"
      ForeColor="Red"
      EnableClientScript="false"
      SetFocusOnError="true"
      ValidationGroup="Group1"
      runat="server"/>
  <asp:RangeValidator  ID ="valrangegod"  
      ErrorMessage="Mora biti od 2003 do 2010!" 
      ControlToValidate="tbgodina"
      Display="Static"
      ForeColor="Red"
      EnableClientScript="false"
      SetFocusOnError="true"
      ValidationGroup="Group1"
     runat="server" MinimumValue="2003" MaximumValue="2010" Type="Integer" />
  <br />
    Razred:
  <asp:RadioButtonList ID="rbl" runat="server" ValidationGroup="Group1">
      <asp:ListItem Text="I" Value="1"/>
      <asp:ListItem Text="II" Value="2"/>
      <asp:ListItem Text="III" Value="3"/>
      <asp:ListItem Text="IV" Value="4"/>
   </asp:RadioButtonList>           
   <asp:RequiredFieldValidator  ID ="valrbl"  
       ErrorMessage="Moras da popunis polje!" 
       ControlToValidate="rbl"
       Display="Static"
       ForeColor="Red"
       EnableClientScript="false"
       SetFocusOnError="true"
       ValidationGroup="Group1"
       runat="server"/>  
            <br />
    <asp:Button ID="btn"
       ValidationGroup="Group1"
       CausesValidation="true"
       Onclick="btn_Click"
       Text="PRIJAVI ME"
       runat="server" />
   <br />
    <asp:Label ID="lblPoruka"
    runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>