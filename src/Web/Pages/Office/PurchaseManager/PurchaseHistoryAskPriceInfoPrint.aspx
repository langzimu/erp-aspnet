﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseHistoryAskPriceInfoPrint.aspx.cs" Inherits="Pages_Office_PurchaseManager_PurchaseHistoryAskPriceInfoPrint" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>采购价格分析</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"  PrintMode="ActiveX"   HasCrystalLogo="False"/>
    </div>
    </form>
</body>
</html>
