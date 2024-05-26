document.getElementById("popupBtn").addEventListener("click", function() {
    document.getElementById("popup").style.display = "block";
    // Fetch data from the server and populate the table
    fetch('fetch_data.php')
        .then(response => response.json())
        .then(data => {
            const table = document.getElementById("dataTable");
            table.innerHTML = ''; // Clear previous table content
            data.forEach(row => {
                const tr = document.createElement("tr");
                // Create and append table cells for each column
                // Adjust accordingly based on your database structure
                // For example: row['column_name']
                tr.innerHTML = `<td>${row['name']}</td><td>${row['email']}</td><td><button class="saveBtn">Save</button></td>`;
                table.appendChild(tr);
            });
        })
        .catch(error => console.error('Error fetching data:', error));
});

// Event listener for save buttons
document.addEventListener("click", function(e) {
    if (e.target.classList.contains("saveBtn")) {
        // Extract the values you want to save from the table row and populate the form
        const selectedRow = e.target.parentNode.parentNode;
        const inputs = selectedRow.querySelectorAll("td");
        const form = document.getElementById("mainForm");
        form.innerHTML = ''; // Clear previous form content
        inputs.forEach(input => {
            const fieldName = input.textContent; // Adjust according to your data structure
            const hiddenInput = document.createElement("input");
            hiddenInput.type = "hidden";
            hiddenInput.name = "fieldname"; // Adjust name attribute based on your form fields
            hiddenInput.value = fieldName;
            form.appendChild(hiddenInput);
        });
        document.getElementById("popup").style.display = "none"; // Close the popup
    }
});
