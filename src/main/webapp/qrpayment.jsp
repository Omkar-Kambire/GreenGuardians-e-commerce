<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>

    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
         <div>
        <h1>Total Price: <span id="totalPrice">0</span></h1>
        <div id="qrcode"></div>
    </div>

    <script>
        $(document).ready(function() {
            // Your logic to fetch the pre-calculated total price
            var totalPrice = <%= totalPrice %>; // Use JSP to get totalPrice

            // Display the total price
            $("#totalPrice").text(totalPrice);

            // Generate QR code with the total price
            var qrCodeDiv = document.getElementById('qrcode');
            new QRCode(qrCodeDiv, {
                text: "Total Price: " + totalPrice, // QR code content
                width: 200, // QR code width
                height: 200 // QR code height
            });
        });
    </script>

    </body>
</html>
