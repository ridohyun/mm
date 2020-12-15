<?php
    $conn = mysqli_connect(
        'localhost',
        'smu',
        '1234',
        'smu');
   
    if ($conn->connect_errno) { printf("Failed to connect to database"); exit(); }

    $query = proper_parse_str($_SERVER['QUERY_STRING']);
    $bigCity =  urldecode($query['bigCity']);
    $region =  urldecode($query['smallCity']);

    $sql = "SELECT * FROM spot WHERE region='$region'";
  
    $result = mysqli_query($conn, $sql);
    $newArr = array();

    if (mysqli_num_rows($result))  {
      $newArr = array();
      while ( $db_field = $result->fetch_assoc() ) {
          $newArr[] = $db_field;
      }
    } else {echo $region;}

    echo json_encode($newArr);
    
    function proper_parse_str($str) {
      # result array
      $arr = array();

      # split on outer delimiter
      $pairs = explode('&', $str);

      # loop through each pair
      foreach ($pairs as $i) {
        # split into name and value
        list($name,$value) = explode('=', $i, 2);
        
        # if name already exists
        if( isset($arr[$name]) ) {
          # stick multiple values into an array
          if( is_array($arr[$name]) ) {
            $arr[$name][] = $value;
          }
          else {
            $arr[$name] = array($arr[$name], $value);
          }
        }
        # otherwise, simply stick it in a scalar
        else {
          $arr[$name] = $value;
        }
      }

      # return result array
      return $arr;
    }
?>

