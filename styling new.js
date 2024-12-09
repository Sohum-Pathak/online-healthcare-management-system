document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("appointmentForm");

    form.addEventListener("submit", (event) => {
        event.preventDefault();

        if (!form.checkValidity()) {
            form.classList.add("was-validated");
        } else {
            alert("Appointment booked successfully!");
            form.reset();
            form.classList.remove("was-validated");
        }
    });
});
