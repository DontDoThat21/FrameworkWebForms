<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="TylorTrubWebForms.StudentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Student Registration</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Student Name" runat="server"></asp:Label>
                                        <asp:TextBox Enabled="true" CssClass="form-control input-sm" placeholder="Student Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Father Name" runat="server"></asp:Label>
                                        <asp:TextBox Enabled="true" CssClass="form-control input-sm" placeholder="Father Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="DOB" runat="server"></asp:Label>
                                        <asp:TextBox Enabled="true" CssClass="form-control input-sm" textmode="Date" placeholder="Student Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Program" runat="server"></asp:Label>
                                        <asp:TextBox Enabled="true" CssClass="form-control input-sm" placeholder="Program" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Region" runat="server"></asp:Label>
                                        <asp:DropDownList runat="server" AutoPostBack="true" OnSelectedIndexChanged="Unnamed10_SelectedIndexChanged">
                                            <asp:ListItem Text="text1" />
                                            <asp:ListItem Text="text2" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Father Name" runat="server"></asp:Label>
                                        <asp:TextBox Enabled="true" CssClass="form-control input-sm" placeholder="Father Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </section>
                </div>
            </div>
        </section>
    </section>

</asp:Content>
