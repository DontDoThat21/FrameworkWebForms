<%@ Page Title="Student Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="TylorTrubWebForms.StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .registration-container {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 80vh;
            padding: 40px 0;
            border-radius: 15px;
            margin: 20px 0;
        }
        
        .form-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            padding: 40px;
            margin: 0 auto;
            max-width: 900px;
        }
        
        .form-title {
            text-align: center;
            color: #333;
            margin-bottom: 40px;
            font-weight: 600;
            font-size: 2.5rem;
            background: linear-gradient(45deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        
        .form-group-modern {
            margin-bottom: 25px;
            position: relative;
        }
        
        .form-label-modern {
            font-weight: 500;
            color: #555;
            margin-bottom: 8px;
            display: block;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        .form-control-modern {
            border: 2px solid #e1e5e9;
            border-radius: 10px;
            padding: 12px 16px;
            font-size: 16px;
            transition: all 0.3s ease;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
        }
        
        .form-control-modern:focus {
            border-color: #667eea;
            outline: none;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
            transform: translateY(-2px);
        }
        
        .dropdown-modern {
            border: 2px solid #e1e5e9;
            border-radius: 10px;
            padding: 12px 16px;
            font-size: 16px;
            transition: all 0.3s ease;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            width: 100%;
        }
        
        .dropdown-modern:focus {
            border-color: #667eea;
            outline: none;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }
        
        .btn-register {
            background: linear-gradient(45deg, #667eea, #764ba2);
            border: none;
            border-radius: 25px;
            padding: 12px 40px;
            color: white;
            font-weight: 600;
            font-size: 16px;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
        }
        
        .btn-register:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(102, 126, 234, 0.4);
        }
        
        .btn-clear {
            background: transparent;
            border: 2px solid #6c757d;
            border-radius: 25px;
            padding: 12px 40px;
            color: #6c757d;
            font-weight: 600;
            font-size: 16px;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-left: 15px;
        }
        
        .btn-clear:hover {
            background: #6c757d;
            color: white;
            transform: translateY(-2px);
        }
        
        .validation-error {
            color: #e74c3c;
            font-size: 12px;
            margin-top: 5px;
            display: block;
        }
        
        .form-row {
            margin-bottom: 20px;
        }
        
        .icon-input {
            position: relative;
        }
        
        .icon-input::before {
            content: '';
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            width: 20px;
            height: 20px;
            background-size: contain;
            z-index: 2;
        }
        
        @media (max-width: 768px) {
            .form-card {
                margin: 0 15px;
                padding: 30px 20px;
            }
            
            .form-title {
                font-size: 2rem;
            }
        }
    </style>

    <div class="registration-container">
        <div class="container">
            <div class="form-card">
                <h1 class="form-title p-2">Student Registration</h1>
                
                <div class="row form-row">
                    <div class="col-md-6">
                        <div class="form-group-modern">
                            <asp:Label ID="lblStudentName" runat="server" Text="Student Name" CssClass="form-label-modern"></asp:Label>
                            <asp:TextBox ID="txtStudentName" runat="server" CssClass="form-control form-control-modern" 
                                placeholder="Enter student's full name" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvStudentName" runat="server" 
                                ControlToValidate="txtStudentName" ErrorMessage="Student name is required" 
                                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group-modern">
                            <asp:Label ID="lblFatherName" runat="server" Text="Father's Name" CssClass="form-label-modern"></asp:Label>
                            <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control form-control-modern" 
                                placeholder="Enter father's full name" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFatherName" runat="server" 
                                ControlToValidate="txtFatherName" ErrorMessage="Father's name is required" 
                                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row form-row">
                    <div class="col-md-6">
                        <div class="form-group-modern">
                            <asp:Label ID="lblDOB" runat="server" Text="Date of Birth" CssClass="form-label-modern"></asp:Label>
                            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control form-control-modern" 
                                TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" 
                                ControlToValidate="txtDOB" ErrorMessage="Date of birth is required" 
                                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvDOB" runat="server" 
                                ControlToValidate="txtDOB" ErrorMessage="Please enter a valid date" 
                                Operator="DataTypeCheck" Type="Date" CssClass="validation-error" Display="Dynamic"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group-modern">
                            <asp:Label ID="lblProgram" runat="server" Text="Academic Program" CssClass="form-label-modern"></asp:Label>
                            <asp:TextBox ID="txtProgram" runat="server" CssClass="form-control form-control-modern" 
                                placeholder="e.g., Computer Science, Engineering" MaxLength="100" list="degreeOptions"></asp:TextBox>
                            <!-- HTML5 datalist provides dropdown + type-ahead suggestions -->
                            <datalist id="degreeOptions">
                                <!-- Associate degrees -->
                                <option value="Associate of Arts (AA)" />
                                <option value="Associate of Science (AS)" />
                                <option value="Associate of Applied Science (AAS)" />
                                <!-- Bachelor degrees -->
                                <option value="Bachelor of Arts (BA)" />
                                <option value="Bachelor of Science (BS)" />
                                <option value="Bachelor of Engineering (BEng)" />
                                <option value="Bachelor of Fine Arts (BFA)" />
                                <option value="Bachelor of Business Administration (BBA)" />
                                <option value="Bachelor of Commerce (BCom)" />
                                <option value="Bachelor of Architecture (BArch)" />
                                <option value="Bachelor of Education (BEd)" />
                                <option value="Bachelor of Nursing (BN)" />
                                <option value="Bachelor of Laws (LLB)" />
                                <!-- Master degrees -->
                                <option value="Master of Arts (MA)" />
                                <option value="Master of Science (MS)" />
                                <option value="Master of Engineering (MEng)" />
                                <option value="Master of Business Administration (MBA)" />
                                <option value="Master of Education (MEd)" />
                                <option value="Master of Fine Arts (MFA)" />
                                <option value="Master of Public Health (MPH)" />
                                <option value="Master of Information Systems (MIS)" />
                                <option value="Master of Public Administration (MPA)" />
                                <!-- Doctoral / Professional -->
                                <option value="Doctor of Philosophy (PhD)" />
                                <option value="Doctor of Medicine (MD)" />
                                <option value="Juris Doctor (JD)" />
                                <option value="Doctor of Dental Surgery (DDS)" />
                                <option value="Doctor of Education (EdD)" />
                                <option value="Doctor of Pharmacy (PharmD)" />
                                <option value="Doctor of Osteopathic Medicine (DO)" />
                                <!-- Certificates / Diplomas -->
                                <option value="Graduate Certificate" />
                                <option value="Postgraduate Diploma" />
                                <option value="Certificate Program" />
                            </datalist>
                            <asp:RequiredFieldValidator ID="rfvProgram" runat="server" 
                                ControlToValidate="txtProgram" ErrorMessage="Academic program is required" 
                                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row form-row">
                    <div class="col-md-6">
                        <div class="form-group-modern">
                            <asp:Label ID="lblRegion" runat="server" Text="Region" CssClass="form-label-modern"></asp:Label>
                            <asp:DropDownList ID="ddlRegion" runat="server" CssClass="dropdown-modern" 
                                AutoPostBack="true" OnSelectedIndexChanged="ddlRegion_SelectedIndexChanged">
                                <asp:ListItem Value="" Text="-- Select Region --" />
                                <asp:ListItem Value="North" Text="North Region" />
                                <asp:ListItem Value="South" Text="South Region" />
                                <asp:ListItem Value="East" Text="East Region" />
                                <asp:ListItem Value="West" Text="West Region" />
                                <asp:ListItem Value="Central" Text="Central Region" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvRegion" runat="server" 
                                ControlToValidate="ddlRegion" ErrorMessage="Please select a region" 
                                CssClass="validation-error" Display="Dynamic" InitialValue=""></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group-modern">
                            <asp:Label ID="lblEmail" runat="server" Text="Email Address" CssClass="form-label-modern"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-modern" 
                                placeholder="student@example.com" TextMode="Email" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Email address is required" 
                                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Please enter a valid email address" 
                                ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" 
                                CssClass="validation-error" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>

                <div class="row form-row">
                    <div class="col-md-6">
                        <div class="form-group-modern">
                            <asp:Label ID="lblPhone" runat="server" Text="Phone Number" CssClass="form-label-modern"></asp:Label>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control form-control-modern" 
                                placeholder="(555) 123-4567" MaxLength="15"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                                ControlToValidate="txtPhone" ErrorMessage="Phone number is required" 
                                CssClass="validation-error" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group-modern">
                            <asp:Label ID="lblGender" runat="server" Text="Gender" CssClass="form-label-modern"></asp:Label>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="dropdown-modern">
                                <asp:ListItem Value="" Text="-- Select Gender --" />
                                <asp:ListItem Value="Male" Text="Male" />
                                <asp:ListItem Value="Female" Text="Female" />
                                <asp:ListItem Value="Other" Text="Other" />
                                <asp:ListItem Value="PreferNotToSay" Text="Prefer not to say" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvGender" runat="server" 
                                ControlToValidate="ddlGender" ErrorMessage="Please select gender" 
                                CssClass="validation-error" Display="Dynamic" InitialValue=""></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 text-center" style="margin-top: 30px;">
                        <asp:Button ID="btnRegister" runat="server" Text="Register Student" 
                            CssClass="btn btn-register" OnClick="btnRegister_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear Form" 
                            CssClass="btn btn-clear" OnClick="btnClear_Click" CausesValidation="false" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <asp:Label ID="lblMessage" runat="server" CssClass="mt-3 d-block text-center" 
                            Style="font-weight: 500; font-size: 14px;"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
