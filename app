<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Is X Down?</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .ad-space {
            width: 100%;
            height: 90px;
            background-color: lightgray;
            margin: 10px 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .status-box {
            font-size: 60px;
            font-weight: bold;
            padding: 50px;
            border-radius: 10px;
            display: inline-block;
            margin: 20px 0;
        }
        .yes { background-color: green; color: white; }
        .no { background-color: red; color: white; }
    </style>
</head>
<body>

    <div class="ad-space">[Ad Space]</div>

    <h1>Is X Down?</h1>

    <div id="status" class="status-box">Checking...</div>

    <div class="ad-space">[Ad Space]</div>

    <script>
        // Simulated Status Check
        function checkStatus() {
            let isDown = Math.random() < 0.5; // Simulated random response
            let statusBox = document.getElementById("status");
            statusBox.textContent = isDown ? "YES" : "NO";
            statusBox.className = "status-box " + (isDown ? "yes" : "no");
        }
        checkStatus();
    </script>

</body>
</html>