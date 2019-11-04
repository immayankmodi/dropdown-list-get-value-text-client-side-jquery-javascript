<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetValueUsingJavaScript.aspx.cs"
    Inherits="DropdownlistGetValueOrTextFromClientSide.GetValueUsingJavaScript" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>AspnetO.com | Get DropDownList Value or Text using JavaScript</title>

    <script type="text/javascript">
        function GetSelectedSubject(e) {
            //get label controls to set value/text
            var lblSelectedText = document.getElementById("lblSelectedText");
            var lblSelectedValue = document.getElementById("lblSelectedValue");

            //get selected value and check if subject is selected else show alert box
            var SelectedValue = e.options[e.selectedIndex].value;
            if (SelectedValue > 0) {
                //get selected text and set to label
                var SelectedText = e.options[e.selectedIndex].text;
                lblSelectedText.innerHTML = SelectedText;

                //set selected value to label                
                lblSelectedValue.innerHTML = SelectedValue;
            } else {
                //reset label values and show alert
                lblSelectedText.innerHTML = "";
                lblSelectedValue.innerHTML = "";
                alert("Please select valid subject.");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Select any Subject</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="ddlSubject" runat="server" ClientIDMode="Static" onchange="GetSelectedSubject(this);">
                            <asp:ListItem Value="0" Text="Please select" />
                            <asp:ListItem Value="1" Text="HTML" />
                            <asp:ListItem Value="2" Text="CSS" />
                            <asp:ListItem Value="3" Text="JavaScript" />
                            <asp:ListItem Value="4" Text="jQuery" />
                            <asp:ListItem Value="5" Text="Asp.net" />
                            <asp:ListItem Value="6" Text="PHP" />
                            <asp:ListItem Value="7" Text="Android" />
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td>You have selected(Text)</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblSelectedText" runat="server" ClientIDMode="Static"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td>You have selected(Value)</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblSelectedValue" runat="server" ClientIDMode="Static"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
