<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="database.aspx.cs" Inherits="CM_Store.items.database" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .firmbox{
            width:50%;
            height:300px;
            left:36%;
            top:20%;
            position:absolute;
            border-radius:20px;
        }
        .heading{
            background-color:#4e73df;
            color:white;
            padding-left:20px;
            padding-top:10px;
            font-weight:bold;
            height:50px
        }
        .fcol{
            width:40%;
            background-color:#4e73df;
            color:white;
            padding-left:20px;
            padding-top:10px;
            font-weight:bold;
            height:50px
        }
        .scol{
            width:60%;
        }
        .btnsave{
            background-color:#36b9cc;
            color:white;
            width:120px;
            height:40px;
            font-size:20px;
            font-weight:normal;
            border:1px solid white
        }
        table{
            border-collapse:collapse;
        }
        table tr td {
            border:1px solid #d9d9d9;
            padding-left:35px;
        }
        .form-control{
            border-radius:0px;
        }
        .page-alters{
            margin-bottom:20px;
        }
        .page-alters .page-alter{
            border-radius:0px;
            margin-bottom:0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form id="form1" runat="server">
    <div class="firmbox">
        <div id="alertmsg" runat="server"></div>
        <div class="heading">
            <li class="fa fa-database" style="font-weight:bold;font-size:20px"></li>&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-weight:bold;font-size:20px">ADD TO DATABASE</span>
        </div>
        <table style="width:100%;text-align:left">
            <tr style="height:60px">
                <td class="fcol"></td>
                <td class="scol">
                    <asp:DropDownList ID="ddtype" CssClass="form-conttrol" runat="server" AutoPostBack="true" style="width:270px;height:34px">
                        <asp:ListItem>Add Item Category</asp:ListItem>
                        <asp:ListItem>Add Item Type</asp:ListItem>
                        <asp:ListItem>Add Department</asp:ListItem>
                        <asp:ListItem>Add Designation</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:60px;display:none" id="categoryRow" runat="server">
                <td class="fcol" id="Td1" runat="server">
                    Select Item Category
                 </td>
                <td class="scol">
                    <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="true" CssClass="form-control" style="width:270px;height:34px">
                        </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:60px">
                <td class="fcol" id="lblname" runat="server">Add New Item</td>
                <td class="scol">
                    <input type="text" class="form-control" style="width:270px;height:34px" id="itemname" runat="server" required />
                </td>
            </tr>
        </table>
        <div style="width:100%;height:70px;text-align:center;margin-top:20px">
            <asp:Button ID="btnenter" runat="server" Text="Save" CssClass="btnsave" />
        </div>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
</asp:Content>
