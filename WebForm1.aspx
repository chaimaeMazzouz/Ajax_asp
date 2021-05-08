<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AT10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    
                    <asp:Label ID="Label1" runat="server" Text="ID_chauffeur :" Width="200px"></asp:Label>
                    <asp:TextBox ID="ID" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Nom :" Width="200px"></asp:Label>
                    <asp:TextBox ID="NOM" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Prénom :" Width="200px"></asp:Label>
                    <asp:TextBox ID="PRENOM" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Adresse :" Width="200px"></asp:Label>
                    <asp:TextBox ID="Adresse" runat="server" Width="570px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Date_Recrutement  :" Width="200px"></asp:Label>
                    <asp:TextBox ID="Date" runat="server" TextMode="DateTime"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Salaire :" Width="200px"></asp:Label>
                    <asp:TextBox ID="salaire" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Ajouter" runat="server" OnClick="Button1_Click" Text="Ajouter Chauffeur" Width="195px" />
                    
                </ContentTemplate>
              
            </asp:UpdatePanel>
       
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                   
                    <asp:Timer ID="Timer1" runat="server" Interval="6000" OnTick="Timer1_Tick1" >
                        </asp:Timer>
                         <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true">
                    </asp:GridView>
                    
                </ContentTemplate>
            </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress2" runat="server">
            <ProgressTemplate>
                In Progress.....
            </ProgressTemplate>
        </asp:UpdateProgress>
        </div>
    </form>
</body>
</html>
