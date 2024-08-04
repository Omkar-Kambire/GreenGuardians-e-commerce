<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
        
        <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            margin-top: 30px;
        }

        form {
            width: 300px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="radio"] {
            margin-bottom: 10px;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            border: none;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
        
    </head>
    <body>
        <h1>Select Payment Method</h1>
    
    <form action="processPayment.jsp" method="post">
        <input type="radio" id="cashOnDelivery" name="paymentMethod" value="cash">
        <label for="cashOnDelivery">Cash on Delivery</label><br>
        
        <input type="radio" id="qrCode" name="paymentMethod" value="qr">
        <label for="qrCode">QR Code Payment</label><br>
        
        <input type="submit" value="Proceed to Pay">
    </form>
    </body>
</html>

