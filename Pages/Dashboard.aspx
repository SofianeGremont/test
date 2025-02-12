<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Power BI Embedded Dashboard</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
        }
        iframe {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Power BI Dashboard</h2>
            <iframe id="reportFrame" width="1140" height="600" allowfullscreen="true"></iframe>
        </div>
    </form>

    <script>
        $(document).ready(function () {
            $.getJSON('config.json', function (data) {
                var report = data.reports[0]; // Affiche le premier rapport par d�faut
                var embedUrl = report.embedUrl + "&autoAuth=true";

                $('#reportFrame').attr('src', embedUrl);
            });
        });
    </script>
</body>
</html>
