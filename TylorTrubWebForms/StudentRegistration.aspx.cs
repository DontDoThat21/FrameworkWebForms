using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TylorTrubWebForms
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set focus to the first input field
                txtStudentName.Focus();
                
                // Clear any previous messages
                lblMessage.Text = "";
            }
        }

        protected void ddlRegion_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle region selection change if needed
            // You can add logic here to populate other dropdowns based on region selection
            // For example, loading cities or institutions based on selected region
            
            var selectedRegion = ddlRegion.SelectedValue;
            if (!string.IsNullOrEmpty(selectedRegion))
            {
                // Add any region-specific logic here
                lblMessage.Text = $"Selected region: {ddlRegion.SelectedItem.Text}";
                lblMessage.ForeColor = System.Drawing.Color.Blue;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    // Collect form data
                    string studentName = txtStudentName.Text.Trim();
                    string fatherName = txtFatherName.Text.Trim();
                    DateTime dob = DateTime.Parse(txtDOB.Text);
                    string program = txtProgram.Text.Trim();
                    string region = ddlRegion.SelectedValue;
                    string email = txtEmail.Text.Trim();
                    string phone = txtPhone.Text.Trim();
                    string gender = ddlGender.SelectedValue;

                    // Here you would typically save to database
                    // For now, we'll just show a success message
                    
                    // Validate age (must be at least 16 years old)
                    int age = DateTime.Now.Year - dob.Year;
                    if (dob > DateTime.Now.AddYears(-age)) age--;
                    
                    if (age < 16)
                    {
                        lblMessage.Text = "Student must be at least 16 years old to register.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        return;
                    }

                    // Success message
                    lblMessage.Text = $"✓ Registration successful for {studentName}! Welcome to {program} program.";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    
                    // Optionally clear form after successful registration
                    // ClearForm();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "An error occurred during registration. Please try again.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    
                    // Log the error (you would use your preferred logging mechanism)
                    System.Diagnostics.Debug.WriteLine($"Registration error: {ex.Message}");
                }
            }
            else
            {
                lblMessage.Text = "Please correct the errors above and try again.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearForm();
            lblMessage.Text = "Form cleared successfully.";
            lblMessage.ForeColor = System.Drawing.Color.Blue;
            txtStudentName.Focus();
        }

        private void ClearForm()
        {
            // Clear all text fields
            txtStudentName.Text = "";
            txtFatherName.Text = "";
            txtDOB.Text = "";
            txtProgram.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            
            // Reset dropdowns to default
            ddlRegion.SelectedIndex = 0;
            ddlGender.SelectedIndex = 0;
            
            // Clear message
            lblMessage.Text = "";
        }

        // Keep the old method name for backward compatibility
        protected void Unnamed10_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlRegion_SelectedIndexChanged(sender, e);
        }
    }
}