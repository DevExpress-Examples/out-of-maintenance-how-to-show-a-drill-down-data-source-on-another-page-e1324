<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Q148434._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
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
<dxwpg:PivotGridField FieldName="OrderID" ID="fieldOrderID" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Country" ID="fieldCountry" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="FirstName" ID="fieldFirstName" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="LastName" ID="fieldLastName" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="ProductName" ID="fieldProductName" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="CategoryName" ID="fieldCategoryName" Area="ColumnArea" AreaIndex="0"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="OrderDate" ID="fieldOrderDate" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="UnitPrice" ID="fieldUnitPrice" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Quantity" ID="fieldQuantity" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Discount" ID="fieldDiscount" Area="FilterArea" AreaIndex="0" Visible="False"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Extended Price" ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0"></dxwpg:PivotGridField>
<dxwpg:PivotGridField FieldName="Sales Person" ID="fieldSalesPerson" Area="RowArea" AreaIndex="0"></dxwpg:PivotGridField>
</Fields>
</dxwpg:aspxpivotgrid>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [SalesPerson]"></asp:AccessDataSource>
		&nbsp;

	</div>
	</form>
</body>
</html>