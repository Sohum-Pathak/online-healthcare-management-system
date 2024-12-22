document.querySelectorAll('.appointment').forEach((element) => {
  element.addEventListener('click', (event) => {
    const appointmentId = event.target.dataset.appointmentId;
    fetch(`/appointments/${appointmentId}`)
      .then((response) => response.json())
      .then((data) => displayAppointmentDetails(data));
  });
});
