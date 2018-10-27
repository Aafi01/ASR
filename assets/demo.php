<?php
    $exam = $_GET['q'];
    // echo '<h3>Test Load</h3>';
    // echo '<b>' . $exam . ' colleges</b>';

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

    $sql = "SELECT name, country FROM colleges WHERE exam='". $exam . "' ORDER BY rank LIMIT 10";
    $result = $conn->query($sql);
    if ($result->num_rows == 0) {
        die("Data fetch failed");
    }
 
    $count = 1;

    echo "<table class='table table-striped'>
        <thead class='thead-dark'>
            <tr>
                <th>Sr. No.</th>
                <th>College Name</th>
                <th>Country</th>
            </tr>
        </thead>
        <tbody>";

    while ($row = $result->fetch_array()) {
        echo "<tr>
            <td>$count</td>
            <td>$row[0]</td>
            <td>$row[1]</td>
            </tr>";
        $count += 1;
    }
    echo "</tbody>
        </table>";

    $conn->close();
?>