SET SERVEROUTPUT ON;

WITH t AS (
    SELECT 'EMPLOYEE' AS tablename, COUNT(*) data_num
    FROM EMPLOYEE GROUP BY 'EMPLOYEE'
    
    UNION ALL
    
    SELECT 'DEPARTMENT' , COUNT(*) AS data_num
    FROM  DEPARTMENT GROUP BY 'DEPARTMENT'
    
    UNION ALL
    
    SELECT 'EMPLOYEE_PROJECT', COUNT(*) AS data_num
    FROM  EMPLOYEE_PROJECT GROUP BY 'EMPLOYEE_PROJECT'
    
    UNION ALL
        
    SELECT 'EMPLOYEE_ROLE' , COUNT(*) AS data_num
    FROM  EMPLOYEE_ROLE GROUP BY 'EMPLOYEE_ROLE'
    
    UNION ALL    
    
    SELECT 'EMPLOYEE_TASK' , COUNT(*) AS data_num
    FROM  EMPLOYEE_TASK GROUP BY 'EMPLOYEE_TASK'
    
    UNION ALL
    
    SELECT 'PROJECT' , COUNT(*) AS data_num
    FROM  PROJECT GROUP BY 'PROJECT'
    
    UNION ALL    
        
    SELECT 'ROLE' , COUNT(*) AS data_num
    FROM  ROLE GROUP BY 'ROLE'
    
    UNION ALL
            
    SELECT 'SKILLS' , COUNT(*) AS data_num
    FROM  SKILLS GROUP BY 'SKILLS'
    
    UNION ALL
                
    SELECT 'STAGE' , COUNT(*) AS data_num
    FROM  STAGE GROUP BY 'STAGE'
    
    UNION ALL
                    
    SELECT 'TASK' , COUNT(*) AS data_num
    FROM  TASK GROUP BY 'TASK'
    
    UNION ALL
                        
    SELECT 'TEAM' , COUNT(*) AS data_num
    FROM  TEAM GROUP BY 'TEAM'
)
SELECT t.tablename || ' - number of values: ' || t.data_num AS tables
from t;

SET SERVEROUTPUT OFF;