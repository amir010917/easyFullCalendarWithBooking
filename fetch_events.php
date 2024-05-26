<?php
require 'db.php';



// Fetch events from the database
$events = $pdo->query("SELECT * FROM tempah_db")->fetchAll(PDO::FETCH_ASSOC);

// Prepare data for FullCalendar, including the "jabatan"
$fullCalendarEvents = array_map(function ($event) {
    return [
        'title' => "{$event['urusan_kerja']} ({$event['unitjabatan']})",  // Display the department with the title
        'start' => $event['tarikh_urusan'],
        'end' => $event['tarikh_tamat'],
        'extendedProps' => [
            'namapemandu' => $event['nama_pemandu'],
            'nokenderaan' => $event['no_kenderaan'],
            'masaurusan' => $event['masa_urusan'],
            'masatamat' => $event['masa_tamat']
        ],
    ];
}, $events);


echo json_encode($fullCalendarEvents);
?>