
    <div id="acctgTagEnumWidgetPlaceHolder"></div>
    <script>
        $(document).ready(function(){
            var node = $('#acctgTagEnumWidgetPlaceHolder')
            var dataObject = {
                "acctgTagEnumIds_0_1" : "${parameters.organizationPartyId}",
            };
            var widgetData = {
                node       : node,
                prefix     : "itemAttributes_",
                suffix     : "",
                index      : 0,
                count      : 0,
                disabled   : "",
                dataObject : dataObject,
                namespace  : "",
                fieldToHide: "acctgTagEnumIds0_0_1"
            };
            loadWidget(widgetData);
        })
    </script>
