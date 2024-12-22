const userRole = document.querySelector('body').dataset.role;
if (userRole === 'doctor') {
  showDoctorDashboard();
} else if (userRole === 'patient') {
  showPatientDashboard();
}
