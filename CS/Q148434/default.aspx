<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Q148434._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v8.1, Version=8.1.9.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dxwpg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwpg:aspxpivotgrid id="ASPxPivotGrid1" runat="server" clientinstancename="pivotGrid"
            cssclass="" datasourceid="AccessDataSource1">
<ClientSideEvents CellDblClick="function(s, e) {
	pivotGrid.SendPostBack(&quot;Data|&quot; + e.ColumnIndex + &quot;|&quot; + e.RowIndex);
}"></ClientSideEvents>
<Fields>
<dxwpg:PivotGridField FieldName="OrderID" Name="fieldOrderID" ID="fieldOrderID" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Country" Name="fieldCountry" ID="fieldCountry" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="FirstName" Name="fieldFirstName" ID="fieldFirstName" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="LastName" Name="fieldLastName" ID="fieldLastName" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="ProductName" Name="fieldProductName" ID="fieldProductName" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="CategoryName" Name="fieldCategoryName" ID="fieldCategoryName" Area="ColumnArea" AreaIndex="0"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="OrderDate" Name="fieldOrderDate" ID="fieldOrderDate" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="UnitPrice" Name="fieldUnitPrice" ID="fieldUnitPrice" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Quantity" Name="fieldQuantity" ID="fieldQuantity" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Discount" Name="fieldDiscount" ID="fieldDiscount" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Extended Price" Name="fieldExtendedPrice" ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Sales Person" Name="fieldSalesPerson" ID="fieldSalesPerson" Area="RowArea" AreaIndex="0"></dxwpg:PivotGridField>
</Fields>
</dxwpg:aspxpivotgrid>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [SalesPerson]"></asp:AccessDataSource>
        &nbsp;
    
    </div>
    </form>
</body>
</html>
