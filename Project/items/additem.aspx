<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="additem.aspx.cs" Inherits="CM_Store.items.additem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stdfiles/itemcss.css" rel="stylesheet" />
    <style type="text/css">
        .receiptbox{
            width:32%;
            position:absolute
        }
        table{
            border-collapse:collapse;
        }
        table{
            border:1px solid #d9d9d9;
            padding-left:15px;
        }
        .receiptbox table tr td{
            border:none;
            padding:0px;
        }
        .form-control{
            border-radius:0px;
        }
        .btn-file {
            position: relative;
            overflow: hidden;
}

        .btn-file input[type=file] {
            position: absolute;
            top: 0;
            right: 0;
            min-width: 100%;
            min-height: 100%;
            font-size: 100px;
            text-align: right;
            filter: alpha(opacity=0);
            opacity: 0;
            outline: none;
            background: white;
            cursor: inherit;
            display: block;
        }

        #img-upload {
            width: 100%;
        }
        .fcol{
             width:40%;
            font-size:16px;
            font-weight:bold;
            color:white;
            background-color:#1cc88a;
        }
        .scol{
            width:60%;
        }
        .itembox{
            width:45%;
            position:absolute;
            left:54.5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form id="newitem" runat="server">
    <div class="receiptbox">
        <div style="background-color:#4e73df;height:50px;padding-left:20px;color:white;padding-top:10px;margin-top:20px">
            <li class="fa fa-camera" style="font-size:20px;font-weight:bold"></li>&nbsp;&nbsp;&nbsp;<span style="font-size:20px;font-weight:bold"> Upload Purchase Receipt</span>
        </div>
         <div style="width:100%">
            <table style="width:100%">
                <tr style="width:400px">
                    <td style="width:100%">
                        <div style="width:100%;background-color:white;padding:2%;border:1px solid rgb(221,221,221)">
                            <img src="../Images/User.png" id="img-upload" style="width:100%;height:300px" alt="preview Image" />
                        </div>
                        <div class="input-group">
                            <span class="input-group-btn">
                                <span class="btn btn-default btn-file" style="background-color:#4e73df;color:white">
                                    Browse... <input type="file" id="imgInp" runat="server" />
                                </span>
                            </span>
                            <input type="text" class="form-control" style="width:60%" readonly />
                        </div>
                    </td>

                </tr>

            </table>

        </div>
    </div>
    <div class="itembox">
        <div id="errormsg" runat="server"></div>
            <table style="width:100%;text-align:left;margin-top:30px">
                <tr>
                    <td class="fcol">Purchase Date</td>
                    <td class="scol">
                         <input id="datepicker" runat="server" width="270" required />
                    </td>
                   
                </tr>
                <tr>
                    <td class="fcol">Select Firm</td>
                        <td class="scol">
                            <asp:DropDownList ID="firms" runat="server" Class="form-form" style="width:270px;height:40px" required></asp:DropDownList>
                        </td>
                 </tr>
                 <tr>
                    <td class="fcol">Select Item Category</td>
                        <td class="scol">
                            <asp:DropDownList ID="category" runat="server" Class="form-form" style="width:270px;height:40px" required></asp:DropDownList>
                        </td>
                </tr>
                 <tr>
                    <td class="fcol">Select Item Type</td>
                        <td class="scol">
                           <asp:DropDownList ID="itemtypes" runat="server" Class="form-form" style="width:270px;height:40px" required></asp:DropDownList>
                          </td> 
                 </tr>
                 <tr>
                    <td class="fcol">Item Code</td>
                      <td class="scol">
                          <input id="itemcode" runat="server" style="width:270px;height:40px" required />
                      </td> 
                 </tr>
                 <tr>
                    <td class="fcol">Item Price</td>
                       <td class="scol">
                           <input id="Number1" type="number" min="1" runat="server" style="width:270px;height:40px" required />
                       </td>
                </tr>
                 <tr>
                    <td class="fcol">Item Quantity</td>
                    <td class="scol">
                       <input id="itemquantity" type="number" min="1" runat="server" style="width:270px;height:40px" required />
                    </td>
                </tr>
                 <tr>
                    <td class="fcol">Description</td>
                    <td class="scol">
                        <input id="description" type="number" min="1" runat="server" style="width:270px;height:55px" required />
                    </td>
                </tr>
            </table>
            <div style="width:100%;text-align:center;height:70px;margin-top:10px">
                <asp:Button ID="itembtn" runat="server"  Text="Add Item" style="background-color:#36b9cc;color:white;width:120px;height:40px;font-size:20px;font-weight:normal;border:1px solid white"/>
            </div>
      </div>
        </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
    <script src="../stdfiles/Script.js"></script>
    <script src="../stdfiles/datepicker.js"></script>
    <script src="../stdfiles/fileupload.js"></script>
</asp:Content>
