<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>hello ${user}</h1>
<div class="box">
    <div class="box-body no-padding">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
            </tr>
            </thead>
            <tbody id="tbody">
            </tbody>
        </table>
    </div>
</div>
</body>
<script>
    $(document).ready(
        getMessage()
    );

    function getMessage() {
        var url = '${ctx}/test/hello';
        $.slims.showLoading();
        $.ajax({
            type: 'POST',
            url: url,
            success: function (result) {
                $.slims.hiddenLoading();
                result = JSON.parse(result);
                console.log(result.success);
                if (result.success) {
                    showMessage(result.data);
                }
            }
        });
    }

    function showMessage(list) {
        var userList = list;
        var str = '';
        if (userList instanceof Array && (userList.length > 0)) {
            for (var i = 0, len = userList.length; i < len; i++) {
                var userData = userList[i];
                str += '<tr><td>' + (userData.userId || '') + '</td><td>' + (userData.userName || '') + '</td></tr>';
            }
            $('#tbody').html(str);
        }
    }
</script>
</html>
