using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.XtraPivotGrid;
using System.ComponentModel;

namespace Q148434 {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (IsPostBack)
                if (Request.Params["__EVENTTARGET"].Contains(ASPxPivotGrid1.ID) && Request.Params["__EVENTARGUMENT"].StartsWith("Data")) {
                    string[] args = Request.Params["__EVENTARGUMENT"].Split('|');
                    if (args.Length == 3) {
                        if (!ASPxPivotGrid1.IsDataBound) ASPxPivotGrid1.DataBind();
                        Session["DS"] = Convert(ASPxPivotGrid1.CreateDrillDownDataSource(int.Parse(args[1]), int.Parse(args[2])));
                        Response.Redirect("DetailPage.aspx");
                    }
                }
        }

        private DataTable Convert(IPivotDataSource source) {
            DataTable result = new DataTable();
            PropertyDescriptorCollection properties = ((ITypedList)source).GetItemProperties(null);
            foreach (PropertyDescriptor property in properties)
                if (property.Name != "PivotGridNullableColumn") 
                    result.Columns.Add(property.Name, property.PropertyType);
            for (int i = 0; i < source.Count; i++) {
                DataRow row = result.NewRow();
                foreach (DataColumn col in result.Columns)
                    row[col] = properties[col.ColumnName].GetValue(source[i]);
                result.Rows.Add(row);
            }
            return result;
        }
    }
}
