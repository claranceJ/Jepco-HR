// Employee data
const employees = [
    { id: 1, name: 'John Doe', position: 'Manager', department: 'Cleaning' },
    { id: 2, name: 'Jane Doe', position: 'Supervisor', department: 'Cleaning' },
    // ...
  ];
  
  // Attendance data
  const attendance = [
    { id: 1, name: 'John Doe', date: '2023-01-01', status: 'Present' },
    { id: 2, name: 'Jane Doe', date: '2023-01-01', status: 'Absent' },
    // ...
  ];
  
  // Payroll data
  const payroll = [
    { id: 1, name: 'John Doe', position: 'Manager', salary: 9000 },
    { id: 2, name: 'Jane Doe', position: 'Supervisor', salary: 6000 },
    // ...
  ];
  
  // Function to generate HTML for a table row
  const generateTableRow = (data) => {
    let row = '';
    for (const value of Object.values(data)) {
      row += `<td>${value}</td>`;
    }
    return `<tr>${row}</tr>`;
  };
  
  // Populate employee table
  const employeeTableBody = document.querySelector('#employee-table-body');
  for (const employee of employees) {
    employeeTableBody.innerHTML += generateTableRow(employee);
  }
  
  // Populate attendance table
  const attendanceTableBody = document.querySelector('#attendance-table-body');