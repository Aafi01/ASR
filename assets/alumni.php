<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "asr";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $query = "SELECT a.alumni_name, c.name, c.exam FROM colleges c JOIN alumni a ON a.cid = c.id LIMIT 5";
    $result = $conn->query($query);

    if ($result->num_rows == 0) {
        die("Data fetch failed");
    }

    while ($row = $result->fetch_row()) {
        echo "<div class='card'>
        <div class='card-body'>
          <h4 class='card-title'>$row[0]</h4>
          <p class='card-text'>
            College: $row[1] <br>
            Exam: $row[2]
          </p>
        </div>
      </div>";
    }

    $conn->close();
?>