<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PHP Calendar with FullCalendar</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
    <style>
        .form-container {
            margin: 20px;
        }
    </style>
</head>
<body>

<div id="calendar"></div>
<!-- JavaScript code to initialize the calendar -->
<script>
document.addEventListener('DOMContentLoaded', function () {
    const calendarEl = document.getElementById('calendar');

    let jabatanFilter = '';  // Initialize filter

    const calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        events: function(fetchInfo, successCallback, failureCallback) {
            // Use fetch events with a specific jabatan
            const params = new URLSearchParams({
                start: fetchInfo.startStr,
                end: fetchInfo.endStr,
                jabatan: jabatanFilter,  // Add jabatan filter
            });

            fetch(`fetch_events.php?${params.toString()}`)
                .then(response => response.json())
                .then(data => successCallback(data))
                .catch(failureCallback);
        },
        eventDidMount: function(info) {  // Configure tooltip on hover
            const no_kenderaan = info.event.extendedProps.nokenderaan || 'No Kenderaan';
            const nama_pemandu = info.event.extendedProps.namapemandu || 'Nama Pemandu';
            const masa_urusan = info.event.extendedProps.masaurusan || 'Masa Urusan';
            const masa_tamat = info.event.extendedProps.masatamat || 'Masa Tamat';

            // Create tooltip using the title attribute
            info.el.title = `Nama Pemandu: ${nama_pemandu}\nNo Kenderaan: ${no_kenderaan}\nMasa Urusan: ${masa_urusan} - ${masa_tamat}`;  // Tooltip text with jabatan and description
        }
    });

    calendar.render();

    // Form submission handler
    document.getElementById('eventForm').addEventListener('submit', function (e) {
        e.preventDefault();

        const formData = new FormData(e.target);

        fetch('insert_event.php', {
            method: 'POST',
            body: formData,
        })
        .then(response => response.json())
        .then(data => {
            if (data.status === 'success') {
                alert(data.message);
                calendar.refetchEvents(); // Refresh the calendar
            } else {
                alert('Error adding event');
            }
        })
        .catch(error => console.error('Error:', error));
    });
});
</script>

</body>
</html>
