<?php
  
  $servername = "localhost";
  $username = "root";
  $password = "";
  $databasename = "emps";
  
  // CREATE CONNECTION
  $conn = new mysqli($servername, $username, $password, $databasename);
  
  // GET CONNECTION ERRORS
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }
  

  $query = "SELECT * FROM `employees`;";
  
  // FETCHING DATA FROM DATABASE
  $result = $conn->query($query);
  
    if ($result->num_rows > 0) 
    {
        echo "
        <table>
          <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Birth Date</th>
            <th>Salary</th>
            <th>Email</th>
            <th>Department</th>
          </tr>
        ";
        while($row = $result->fetch_assoc())
        {
          echo '<tr>';
          echo '<td>'.$row['id'].'</td>';
          echo '<td>'.$row['fname'].'</td>';
          echo '<td>'.$row['lname'].'</td>';
          echo '<td>'.$row['bdate'].'</td>';
          echo '<td>'.$row['salary'].'</td>';
          echo '<td>'.$row['email'].'</td>';
          echo '<td>'.$row['dept'].'</td>';          
          echo '</tr>';
        }
        echo '</table>';
    } 
    else {
        echo "0 results";
    }
  
   $conn->close();
  
?>