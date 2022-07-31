*** Variables ***
#Login
${Browser}      Chrome
${LoginUrl}     https://opensource-demo.orangehrmlive.com/
${userLogin}    Admin
${password}     admin123

#Dashboard Menu
${assignLeave}      "/index.php/leave/assignLeave"
${leaveList}        "/index.php/leave/viewLeaveList"
${timesheets}       "/index.php/time/viewEmployeeTimesheet"
${applyLeave}       "/index.php/leave/applyLeave"
${myLeave}          "/index.php/leave/viewMyLeaveList"
${myTimesheet}      "/index.php/time/viewMyTimesheet"

#Admin Menu
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

#PIM Menu
${reportName}               PIM Sample Report

#Leave Menu
${subUnit}                  Engineering
${fromDate}                 2021-01-01
${toDate}                   2022-01-01
${invalidDate}              01-01-2021
${msgInvalidDate}           Should be a valid date in yyyy-mm-dd format
${msgErrToDate}             To date should be after from date
