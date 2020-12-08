<?php

    // Define headers for response
    header('Access-Control-Allow-Origin:*');
    header('Content-Type: application/json; charset=UTF-8');

    // Results that will be returned
    $results = [];

    $visitor_name = '';
    $visitor_email = '';
    $visitor_message = '';
    
    
    if (isset ($_POST['name'])){ 
        $visitor_name = filter_var($_POST['name'], FILTER_SANITIZE_STRING); 
    } else {
        $results['error'] = 'Name field not filled out';
    }
    
    if (isset ($_POST['email'])){ 
        $visitor_email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL); 
    } else {
        $results['error'] = 'Email field not filled out';
    }
    
    if (isset ($_POST['message'])){ 
        $visitor_message = filter_var($_POST['message'], FILTER_SANITIZE_STRING); 
    } else {
        $results['error'] = 'Message field not filled out';
    }
    
    $email_headers = array(
        'From'=>$visitor_email
    );
    
    
    $email_subject = "Contact Request";
    $email_recipient = "natashaadler15@gmail.com";


    $email_message = sprintf('Name: %s, Email %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);
    
    
    // If error is set then dont send email because missing input
    if (!$results['error']) {
        $email_result = mail($email_recipient, $email_subject, $email_message, $email_headers);
    } else {
        echo json_encode($results);
        exit;
    }
    
    
    if ($email_result) {
        $results['message'] = 'Message sent, you will be contacted within a the next 48 hours';
    } else {
        $results['message'] = 'Error, unable to send message';
    }
    
    echo json_encode($results);