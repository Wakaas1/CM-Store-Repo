﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="changepwd.aspx.cs" Inherits="CM_Store.Faculity.changepwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .outertable{
             width:100%;
             height:530px;
             padding-left:17px
        }
        .innertable{
            width:60%;
            margin-left:20%;
            margin-right:20%;
            font-weight:bold
        }
        .innertable tr td {
            border:1px solid #ccc;
            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form id="form1" runat="server">
    <table class="outertable">
        <tr>
            <td>
                <table class="innertable" id="changetable" runat="server">
                    <tr>
                        <td style="border:none" colspan="2">
                            <div id="errormsg" runat="server">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:40%">
                            Enter Password
                        </td>

                        <td style="width:60%">
                            <input type="password" id="txtoldpwd" runat="server" class="form-control" style="width:270px;height:34px" required />
                        </td>
                    </tr>
                      <tr>
                        <td style="width:40%">
                            Enter New Password
                        </td>

                        <td style="width:60%">
                            <input type="password" id="txtnewpwd" runat="server" class="form-control" style="width:270px;height:34px" required />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center">
                            <asp:Button ID="btnenter" Text="Save" runat="server" Style="width:120px;height:40px;font-size:20px;font-weight:normal" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
</asp:Content>

