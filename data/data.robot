*** Variables ***
#Login
${Browser}      Chrome
${LoginUrl}     https://opensource-demo.orangehrmlive.com/
${userLogin}    Admin
${password}     admin123

#Dashboard
${assignLeave}      "/index.php/leave/assignLeave"
${leaveList}        "/index.php/leave/viewLeaveList"
${timesheets}       "/index.php/time/viewEmployeeTimesheet"
${applyLeave}       "/index.php/leave/applyLeave"
${myLeave}          "/index.php/leave/viewMyLeaveList"
${myTimesheet}      "/index.php/time/viewMyTimesheet"

#Admin
${msgSuccessCreated}        Successfully Saved
${msgBlankError}            Required
${msgEmpNotFound}           Employee does not exist
${msgInvalideUsername}      Should have at least 5 characters
${msgInvalidPassword}       Should have at least 8 characters
${msgConfirmPassword}       Passwords do not match
${passVeryWeak}             Very Weak
${passWeak}                 Weak
${passBetter}               Better
${passStrongest}            Strongest
${searchUsername}           Charlie.Carter
${userRole}                 Admin
${EmployeeName}             Charlie Carter
${userStatus}               Enabled
${unlistedEmp}              Ronaldowati
${veryWeakPass}             12345678
${weakPass}                 qazwsx132
${betterPass}               Qaz132wsx
${strongestPass}            Sanbercode100%
${invalidData}              abc
${dataNotFound}             No Records Found
