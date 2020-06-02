create view IT_COMPANY as 
select 
    project.name Project_Name,
    project.description Project_Description,
    to_char(project.start_day, 'dd-mm-yyyy') Project_Start_Date,
    to_char(project.end_day, 'dd-mm-yyyy') Project_End_Date,
    stage.name Stage_Name,
    to_char(stage.Stage_Start_Date, 'dd-mm-yyyy') Stage_Start_Date,
    to_char(stage.Stage_End_Date, 'dd-mm-yyyy') Stage_End_Date,
    to_char(task.start_date, 'dd-mm-yyyy') Stage_Tasks_Start_Date,
    to_char(task.end_date, 'dd-mm-yyyy') Stage_Tasks_End_Date,
    task.name Stage_Tasks_Name,
    status.status_name Stage_Tasks_Status,
    employee.name Assigned_Person_Name,
    employee.surname Assigned_Person_Last_Name,
    role.role_name Assigned_Person_Position,
    department.name Assigned_Person_Department,
    t_lead.name Team_Lead_Name,
    t_lead.surname Team_Lead_Last_Name
from stage
inner join project
on project.id = stage.project_id
right join task
on task.stage_id = stage.id
inner join status
on status.id=task.status_id
right join employee_task
on employee_task.task_id = task.id
inner join employee
on employee_task.employee_id = employee.id
left join team 
on employee.id = team.employee_lead_id
left join employee t_lead 
on t_lead.id = team.employee_lead_id
left join employee_role
on employee_role.employee_id = employee.id
left join role
on role.id = employee_role.role_id
join department
on department.id = employee.department_id

group by 
    project.name,
    project.description,
    project.start_day,
    project.end_day,
    stage.name,
    stage.stage_start_date,
    stage.stage_end_date,
    task.start_date,
    task.end_date,
    task.name,
    status.status_name,
    employee.name,
    employee.surname,
    role.role_name,
    department.name,
    t_lead.name,
    t_lead.surname
order by stage.stage_start_date, stage.stage_end_date;