using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalJeremiahMacDougall2.ProductTableAdapters;

namespace FinalJeremiahMacDougall2
{
    using ProductTable = Product.ProductTableDataTable;
    using CatTable = Product.CategoryDataTable;
    using SuppTable = Product.SupplierDataTable;

    public partial class Main : System.Web.UI.Page
    {
        // objects for table Products
        ProductTableAdapter adpProducts = new ProductTableAdapter();

        // objects for table categories
        // Product adpFinal = new Product();

        CategoryTableAdapter adpCategories = new CategoryTableAdapter();

        // objects for supplier caterogies

        SupplierTableAdapter adpSupplier = new SupplierTableAdapter();

        // ProductTable tblProduct = new ProductTable();
        CatTable tblCategories = new CatTable();
        SuppTable tblSuppliers = new SuppTable();
        ProductTable tblProducts = new ProductTable();

        private void RefreshGridView()
        {
            tblProducts = adpProducts.GetDataProduct();    // get the datatable
            Cache["tblProducts"] = tblProducts;         // cache the datatable

            grdProducts.DataSource = tblProducts;
            grdProducts.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                RefreshGridView();
                tblProducts = adpProducts.GetDataProduct();
                tblCategories = adpCategories.GetDataCategory();
                tblSuppliers = adpSupplier.GetDataSupplier();


                // populate the Categories ListBox
                ddlCategories.DataSource = tblCategories;
                ddlSuppliers.DataSource = tblSuppliers;

                ddlCategories.DataTextField = tblCategories.CategoryNameColumn.ToString();
                ddlCategories.DataValueField = tblCategories.CategoryIdColumn.ToString();

                ddlSuppliers.DataTextField = tblSuppliers.CompanyNameColumn.ToString();
                ddlSuppliers.DataValueField = tblSuppliers.SupplierIdColumn.ToString();

                ddlCategories.DataBind();
                ddlSuppliers.DataBind();

                // add a default item into Products DropDownList
                ddlCategories.Items.Insert(0, new ListItem("Select a Category", "-1"));
                ddlSuppliers.Items.Insert(0, new ListItem("Select a Supplier", "-1"));


                // Get Method
                grdProducts.DataSource = adpProducts.GetDataProduct();
                grdProducts.DataBind();
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            // cache the table
            if (Page.IsValid)
            {
                try
                {
                    string productName = txtProductName.Text;
                    int catId = int.Parse(ddlCategories.SelectedValue);
                    int supplierId = int.Parse(ddlSuppliers.SelectedValue);

                    adpProducts.Insert(productName, catId, supplierId);
                    lblMessage.Text = "Success!";

                    RefreshGridView();
                }
                catch
                {
                    lblMessage.Text = "Failed.";
                }
            }



        }
    }
}