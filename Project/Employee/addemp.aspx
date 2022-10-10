<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addemp.aspx.cs" Inherits="CM_Store.Employee.addemp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../stdfiles/DropDown.js"></script>
    <link href="../stdfiles/browseBtn.css" rel="stylesheet" />
    <style type="text/css">
        .personalbox{
            border:1px solid #d9d9d9;
        position:absolute;
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
         table tr td {
            border:1px solid #d9d9d9;
            padding-left:15px;
        }
        .form-control{
            border-radius:0px;
        }
        .employeebox{
            border:1px solid #d9d9d9;
            position:absolute;
            left:60%;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form id="form1" runat="server" >
        <div class="personalbox">
        <div class="heading">
             <li class="fa fa-user" style="font-weight:bold;font-size:20px"></li>&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-weight:bold;font-size:20px">PERSONAL DETAIL</span>
        </div>
        <div style="width:450px">
            <table style="width:450px;text-align:left;margin-top:15px" id="myTable">
                <tr style="height:60px">
                    <td style="width:35%;font-size:16px">Picture</td>
                    <td style="width:65%">
                          <div style="width:100%;background-color:white;padding:2%;border:1px solid rgb(221,221,221)">
                            <img src="../Images/User.png" id="img-upload" style="width:263px;height:216px" alt="preview Image" />
                        </div>
                    </td>
                </tr>
                <tr style="height:45px">
                    <td colspan="2" style="width:100%">
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
                <tr style="height:45px">
                    <td class="fcol">Name</td>
                    <td class="scol">
                        <input id="empname" runat="server" class="form-control" style="width:263px;height:34px" placeholder="Shivani Tiwari" required />
                    </td>
                </tr>
                 <tr style="height:45px">
                    <td class="fcol">Phone</td>
                    <td class="scol">
                        <input id="cell" runat="server" type="tel" pattren="^\d{11}$" class="form-control" style="width:263px;height:34px" placeholder="033311111111" required />
                    </td>
                </tr>
                  <tr style="height:45px">
                    <td class="fcol">Gender</td>
                    <td class="scol">
                        <asp:DropDownList ID="gender" runat="server" CssClass="form-control" style="width:263px;height:34px">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem >Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
    </div>
        <div class="employeebox">
            <div class="heading">
             <li class="fa fa-university" style="font-weight:bold;font-size:20px"></li>&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-weight:bold;font-size:20px">CM DETAIL</span>
         </div>
            <div style="width:490px">
            <table style="width:490px;text-align:left;margin-top:15px">
                <tr style="height:45px">
                    <td class="fcol">Select Department</td>
                    <td class="scol">
                        <asp:DropDownList ID="department" runat="server" CssClass="form-control" style="width:263px;height:34px" >
                            <asp:ListItem Selected="True">Computer Science</asp:ListItem>
                            <asp:ListItem >Management Science</asp:ListItem>
                            <asp:ListItem >Enviromental Science</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height:45px">
                    <td class="fcol">Select Designation</td>
                    <td class="scol">
                          <asp:DropDownList ID="designation" runat="server" CssClass="form-control" style="width:263px;height:34px" >
                            <asp:ListItem Selected="True">Computer Science</asp:ListItem>
                            <asp:ListItem >Management Science</asp:ListItem>
                            <asp:ListItem >Enviromental Science</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height:45px">
                    <td class="fcol">Employee ID</td>
                    <td class="scol">
                        <input id="empID" runat="server" class="form-control" placeholder="CIIT/VHR/VE-276" style="width:263px;height:34px" required />
                    </td>
                </tr>
                 <tr style="height:45px">
                    <td class="fcol">Email</td>
                    <td class="scol">
                         <input id="emailID" type="email" runat="server" class="form-control" placeholder="shivanitiwari@ciitisd.edu.pk" style="width:263px;height:34px" required />
                    </td>
                </tr>
                 <tr style="height:45px">
                    <td class="fcol">Office Location</td>
                    <td class="scol">
                        <input id="empAddress" runat="server" class="form-control" placeholder="Left Faculty Hall Second Floor Main Block " style="width:263px;height:34px" required />
                    </td>
                </tr>
                 <tr style="height:45px">
                    <td class="fcol">Account Type</td>
                    <td class="scol">
                        <asp:DropDownList ID="accounttype" runat="server" CssClass="form-control" style="width:263px;height:34px">
                            <asp:ListItem Selected="True">Normal User</asp:ListItem>
                            <asp:ListItem >HOD</asp:ListItem>
                            <asp:ListItem >Admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
                <div style="width:490px;text-align:center;margin-top:20px">
                    <asp:Button ID="btnenter" runat="server" Text="Submit" CssClass="btnsave" />
             </div>
          </div>
       </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
    <script src="../stdfiles/Script.js"></script>
    <script src="../stdfiles/fileupload.js"></script>
</asp:Content>

