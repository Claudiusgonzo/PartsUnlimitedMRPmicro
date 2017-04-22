<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="utf-8" />
    <title>dealers</title>

    <link href="./dealers.css" rel="stylesheet" />
    <script src="./dealers.js"></script>
</head>
<body>
    <div class="dealers fragment">
        <header class="page-header" aria-label="Header content" role="banner">
            <button class="page-header-home">
                <img src="<c:url value="/resources/images/FabrikamIcon.png" />" />
            </button>
            <h2 class="titlearea win-type-ellipsis">
                <span class="pagetitle">Dealers</span>
            </h2>
        </header>
        <section class="page-section" aria-label="Main content" role="main">
            <!-- Simple template for the ListView instantiation  -->
            <div class="dealerItemTemplate" data-win-control="WinJS.Binding.Template" style="display: none">
                <div class="listItem dealerItem">
                    <div class="dealerItem-Detail">
                        <h3 data-win-bind="textContent: name"></h3>
                        <div class="list-item-entry-small" data-win-bind="textContent: contact"></div>
                        <div class="list-item-entry-small" data-win-bind="textContent: address"></div>
                        <div class="list-item-entry-small" data-win-bind="textContent: email"></div>
                        <div class="list-item-entry-small" data-win-bind="textContent: phone"></div>
                    </div>
                </div>
            </div>

            <div class="edittools" data-win-control="Controls.EditTools" data-win-options="{  }"></div>

            <div id="listView"
                 class="itemListView dealerListView"
                 data-win-control="WinJS.UI.ListView"
                 data-win-options="{
                    itemDataSource: Data.dealers.dataSource,
                    itemTemplate: select('.dealerItemTemplate'),
                    selectionMode: 'single',
                    tapBehavior: 'directSelect',
                    swipeBehavior: 'select',
                    layout: { type: WinJS.UI.ListLayout }
                 }">
            </div>

            <div class="editDetail dealerDetail">
                <label class="inputlabel">Name:</label>
                <input id="name" class="textinput" type="text" data-win-bind="value: name Binding.Mode.twoway" />
                <label class="inputlabel">Contact:</label>
                <input id="contact" class="textinput" type="text" data-win-bind="value: contact Binding.Mode.twoway" />
                <label class="inputlabel">Address:</label>
                <input id="address" class="textinput" type="text" data-win-bind="value: address Binding.Mode.twoway" />
                <label class="inputlabel">Email:</label>
                <input id="email" class="textinput" type="text" data-win-bind="value: email Binding.Mode.twoway" />
                <label class="inputlabel">Phone:</label>
                <input id="phone" class="textinput" type="text" data-win-bind="value: phone Binding.Mode.twoway" />
            </div>
        </section>
    </div>
</body>
</html>
