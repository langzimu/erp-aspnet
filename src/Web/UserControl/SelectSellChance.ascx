﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SelectSellChance.ascx.cs"
    Inherits="UserControl_SelectSellChance" %>
<div id="divSellSend">
    <a name="pageSellSendMark"></a>
    <!--提示信息弹出详情start-->
    <div id="divSellSendSelect" style="border: solid 10px #93BCDD; background: #fff;
        padding: 10px; width: 700px; z-index: 21; position: absolute; display: none;
        top: 20%; left: 60%; margin: 5px 0 0 -400px;">
        <table width="99%" border="0" align="center" cellpadding="0" id="Table1" cellspacing="0"
            bgcolor="#CCCCCC">
            <tr>
                <td bgcolor="#FFFFFF">
                    <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC"
                        class="table">
                        <tr class="table-item">
                            <td height="25" colspan="6" bgcolor="#E7E7E7" align="left" style="width: 50%;">
                               
                                 <img src="../../../Images/Button/Bottom_btn_close.jpg" alt="关闭" onclick="closeSellSenddiv()" />
                           

                                 <img src="../../../Images/Button/Main_btn_qk.jpg" alt="清空" onclick="clearSellChance()" />
                            </td>
                        </tr>
                        <tr class="table-item">
                            <td width="13%" height="20" bgcolor="#E7E7E7" align="right">
                                销售机会编号
                            </td>
                            <td width="20%" bgcolor="#FFFFFF">
                                <input id="ChanceNo" type="text" style="width: 120px;" class="tdinput" maxlength="50" />
                            </td>
                            <td width="13%" bgcolor="#E7E7E7" align="right">
                                主题
                            </td>
                            <td width="20%" bgcolor="#FFFFFF">
                                <input id="ChanceTitle" class="tdinput" maxlength="50" type="text" />
                            </td>
                            <td width="13%" bgcolor="#E7E7E7" align="right">
                             客户
                            </td>
                            <td width="21%" bgcolor="#FFFFFF">
                            <input id="ChCustName" type="text" style="width: 120px;" class="tdinput" maxlength="50" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" align="center" bgcolor="#FFFFFF">
                                <input type="hidden" id="hiddSearchModel" value="all" />
                                <img alt="检索" src="../../../images/Button/Bottom_btn_search.jpg" style='cursor: pointer;'
                                    onclick='TurnToSendPage(1)' />&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <table width="99%" border="0" align="center" cellpadding="0" id="SellSendDataList" cellspacing="1"
            bgcolor="#CCCCCC">
            <tbody>
            <tr>
                <th height="20" align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                    选择
                </th>
                <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                    <div class="orderClick" onclick="OrderSellSendBy('ChanceNo','oChance1');return false;">
                        销售机会编号<span id="oChance1" class="orderTip"></span></div>
                </th>
                <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                    <div class="orderClick" onclick="OrderSellSendBy('Title','oChance2');return false;">
                        主题<span id="oChance2" class="orderTip"></span></div>
                </th>
                <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                    <div class="orderClick" onclick="OrderSellSendBy('CustName','oChance3');return false;">
                        客户<span id="oChance3" class="orderTip"></span></div>
                </th>
                <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                    <div class="orderClick" onclick="OrderSellSendBy('EmployeeName','oChance4');return false;">
                        业务员<span id="oChance4" class="orderTip"></span></div>
                </th>
                <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                    <div class="orderClick" onclick="OrderSellSendBy('FindDate','oChance5');return false;">
                        发现时间<span id="oChance5" class="orderTip"></span></div>
                </th>
                <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                    <div class="orderClick" onclick="OrderSellSendBy('PhaseName','oChance6');return false;">
                        阶段<span id="oChance6" class="orderTip"></span></div>
                </th>
                <th align="center" background="../../../images/Main/Table_bg.jpg" bgcolor="#FFFFFF">
                    <div class="orderClick" onclick="OrderSellSendBy('StateName','oChance7');return false;">
                        状态<span id="oChance7" class="orderTip"></span></div>
                </th>
            </tr>
            </tbody>
        </table>
        <br />
        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#999999"
            class="PageList">
            <tr>
                <td height="28" background="../../../images/Main/PageList_bg.jpg">
                    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" class="PageList">
                        <tr>
                            <td height="28" background="../../../images/Main/PageList_bg.jpg" width="28%">
                                <div id="pageSellSendCount">
                                </div>
                            </td>
                            <td height="28" align="right">
                                <div id="pageSendList_Pager" class="jPagerBar">
                                </div>
                            </td>
                            <td height="28" align="right">
                                <div id="divSendPage">
                                    <span id="pageSendList_Total"></span>每页显示
                                    <input name="text" type="text" id="ShowSendPageCount" style="width: 20px;" maxlength="3" />
                                    条 转到第
                                    <input name="text" type="text" style="width: 20px;" id="SendToPage" maxlength="7" />
                                    页
                                    <img src="../../../images/Button/Main_btn_GO.jpg" style='cursor: hand;' alt="go"
                                        align="absmiddle" onclick="ChangeSendPageCountIndex($('#ShowSendPageCount').val(),$('#SendToPage').val());" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <!--提示信息弹出详情end-->
</div>

<script type="text/javascript">
    var popSellSendObj = new Object();
    popSellSendObj.InputObj = null;


    popSellSendObj.ShowList = function(objInput) {
        popSellSendObj.InputObj = objInput;
        ShowPreventReclickDiv();
        $("#ChanceTitle").val('');
        $("#ChanceNo").val('');
        $("#ChCustName").val('');
        $("#hiddSearchModel").val(objInput); //查询的模式，all是取出所有的销售机会，protion时取出所有未被报价的销售机会
        document.getElementById('divSellSendSelect').style.display = 'block';
        TurnToSendPage(1);
    }

    var pageSendCount = 10; //每页计数
    var totalOrderRecord = 0;
    var pagerSendStyle = "flickr"; //jPagerBar样式

    var currentSendPageIndex = 1;
    var orderBySend = ""; //排序字段
    //jQuery-ajax获取JSON数据
    function TurnToSendPage(pageIndex) {
        var CustName = $.trim($("#ChCustName").val());
        var Title = $.trim($("#ChanceTitle").val());
        var OrderNo = $.trim($("#ChanceNo").val());
        var model = $("#hiddSearchModel").val();
        currentSendPageIndex = pageIndex;
        $.ajax({
            type: "POST", //用POST方式传输
            dataType: "json", //数据格式:JSON
            url: '../../../Handler/Office/SellManager/SellChanceList.ashx', //目标地址
            cache: false,
            data: 'pageIndex=' + pageIndex + '&pageCount=' + pageSendCount + '&orderby=' + escape(orderBySend) +
            "&Title=" + escape(Title) + "&orderNo=" + escape(OrderNo) + '&CustName=' + escape(CustName) + "&model=" + escape(model) + "&action=UC", //数据

            beforeSend: function() { }, //发送数据之前

            success: function(msg) {
                //数据获取完毕，填充页面据显示
                //数据列表
                $("#SellSendDataList tbody").find("tr.newrow").remove();
                $.each(msg.data, function(i, item) {
                    if (item.ID != null && item.ID != "") {
                        var OrderNo = item.ChanceNo;
                        var Title = item.Title;
                        var CustName = item.CustName;

                        if (Title != null) {
                            if (Title.length > 6) {
                                Title = Title.substring(0, 6) + '...';
                            }
                        }
                        if (CustName != null) {
                            if (CustName.length > 6) {
                                CustName = CustName.substring(0, 6) + '...';
                            }
                        }
                        if (OrderNo != null) {
                            if (OrderNo.length > 20) {
                                OrderNo = OrderNo.substring(0, 20) + '...';
                            }
                        }
                        $("<tr class='newrow'></tr>").append("<td height='22' align='center'>" + " <input type=\"radio\"  id=\"radioSellSend_" + item.ID + "\" value=\"" + item.ID + "\" onclick=\"fnSelectSellSend(" + item.ID + ");\" name=\"radioChan\"/>" + "</td>" +
                    "<td height='22' align='center'><span title=\"" + item.ChanceNo + "\">" + OrderNo + "</td>" +
                    "<td height='22' align='center'><span title=\"" + item.Title + "\">" + Title + "</td>" +
                    "<td height='22' align='center'><span title=\"" + item.CustName + "\">" + CustName + "</td>" +

                    "<td height='22' align='center'>" + item.EmployeeName + "</td>" +
                    "<td height='22' align='center'>" + item.FindDate + "</td>" +
                    "<td height='22' align='center'>" + item.PhaseName + "</td>" +
                    "<td height='22' align='center'>" + item.StateName + "</td>").appendTo($("#SellSendDataList tbody"));
                    }
                });
                //页码
                ShowPageBar("pageSendList_Pager", //[containerId]提供装载页码栏的容器标签的客户端ID
                   "<%= Request.Url.AbsolutePath %>", //[url]
                    {style: pagerSendStyle
                    , mark: "pageSellSendMark",
                    totalCount: msg.totalCount,
                    showPageNumber: 3,
                    pageCount: pageSendCount,
                    currentPageIndex: pageIndex,
                    noRecordTip: "没有符合条件的记录",
                    preWord: "上页",
                    nextWord: "下页",
                    First: "首页",
                    End: "末页",
                    onclick: "TurnToSendPage({pageindex});return false;"}//[attr]
                    );
                totalOrderRecord = msg.totalCount;
                $("#ShowSendPageCount").val(pageSendCount);
                ShowTotalPage(msg.totalCount, pageSendCount, pageIndex, $("#pageSellSendCount"));
                $("#SendToPage").val(pageIndex);
            },
            error: function() { },
            complete: function() { $("#pageSendList_Pager").show(); SellSendDataList("SellSendDataList", "#E7E7E7", "#FFFFFF", "#cfc", "cfc"); } //接收数据完毕
        });
    }

    //table行颜色
    function SellSendDataList(o, a, b, c, d) {
        var t = document.getElementById(o).getElementsByTagName("tr");
        for (var i = 0; i < t.length; i++) {
            t[i].style.backgroundColor = (t[i].sectionRowIndex % 2 == 0) ? a : b;
            t[i].onmouseover = function() {
                if (this.x != "1") this.style.backgroundColor = c;
            }
            t[i].onmouseout = function() {
                if (this.x != "1") this.style.backgroundColor = (this.sectionRowIndex % 2 == 0) ? a : b;
            }
        }
    }

    //改变每页记录数及跳至页数
    function ChangeSendPageCountIndex(newPageCount, newPageIndex) {
        var fieldText = "";
        var msgText = "";
        var isFlag = true;

        if (!IsNumber(newPageIndex) || newPageIndex == 0) {
            isFlag = false;
            fieldText = fieldText + "跳转页面|";
            msgText = msgText + "必须为正整数格式|";
        }
        if (!IsNumber(newPageCount) || newPageCount == 0) {
            isFlag = false;
            fieldText = fieldText + "每页显示|";
            msgText = msgText + "必须为正整数格式|";
        }
        if (!isFlag) {
            popMsgObj.Show(fieldText, msgText);
        }
        else {
            if (newPageCount <= 0 || newPageIndex <= 0 || newPageIndex > ((totalOrderRecord - 1) / newPageCount) + 1) {
                showPopup("../../../Images/Pic/Close.gif", "../../../Images/Pic/note.gif", "转到页数超出查询范围！");
                return false;
            }
            else {
                this.pageSendCount = parseInt(newPageCount);
                TurnToSendPage(parseInt(newPageIndex));
            }
        }
    }

    //排序
    function OrderSellSendBy(orderColum, orderTip) {
        var ordering = "d";
        //var orderTipDOM = $("#"+orderTip);
        var allOrderTipDOM = $(".orderTip");
        if ($("#" + orderTip).html() == "↑") {
            allOrderTipDOM.empty();
            $("#" + orderTip).html("↓");
        }
        else {
            ordering = "a";
            allOrderTipDOM.empty();
            $("#" + orderTip).html("↑");
        }
        orderBySend = orderColum + "_" + ordering;
        TurnToSendPage(1);
    }

    function closeSellSenddiv() {
        obj = document.getElementById("divPreventReclick");
        //隐藏遮挡的DIV
        if (obj != null && typeof (obj) != "undefined") obj.style.display = "none";
        document.getElementById("divSellSendSelect").style.display = "none";
    }

    
</script>

