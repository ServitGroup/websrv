<?php
// filename: add_to_queue.php

//creating a queue requires we come up with an arbitrary number
define('QUEUE',21671);
//add message to queue
var_dump(QUEUE);

$queue = msg_get_queue(QUEUE);
 
// Create dummy message object
// $o = new stdClass();
// $o->name = 'foo';
// $o->id = uniqid();
//  
// var_dump($o);

//try to add message to queue
// if (msg_send($queue, 1, $o)) {
//         echo "added to queue  \n";
//         // you can use the msg_stat_queue() function to see queue status
//         print_r(msg_stat_queue($queue));
// }
// else {
//         echo "could not add message to queue \n";
// }
?>