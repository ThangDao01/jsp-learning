<%@ page import="com.example.jsp.model.User" %>
<%@ page import="java.util.List" %>
<%
//   User user= (User) request.getAttribute("user");
    List<User> userList= (List<User>) request.getAttribute("userList");
%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Form-v9 by Colorlib</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" type="text/css" href="https://colorlib.com/etc/regform/colorlib-regform-35/css/nunito-font.css">

    <link rel="stylesheet" href="https://colorlib.com/etc/regform/colorlib-regform-35/css/style.css">
    <meta name="robots" content="noindex, follow">
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"
            nonce="47f42043-f771-4e97-89ea-d6317e00fb7d"></script>
</head>
<body class="form-v9">
<div class="page-content">
    <div class="form-v9-content" style="background-image: url('https://colorlib.com/etc/regform/colorlib-regform-35/images/form-v9.jpg')">
        <form class="form-detail">
            <h2>Registration Form</h2>
            <%
                for (int i = 0; i < userList.size(); i++) {
            %>
            <li>
                Username : <%=userList.get(0).getUsername()%> <br/>
                Full name <%=userList.get(0).getFullname()%> <br/>
            </li>
            <%
                }
            %>
                <a href="/register">
                    <input type="submit" name="register" class="register" value="Back">
                </a>
        </form>


    </div>
</div>

<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
</body>
</html>