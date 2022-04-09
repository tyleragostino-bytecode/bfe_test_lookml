

view: users {
  derived_table: {       
      sql: SELECT 1 as ID, 'Alice' as Name, '1/1/2000' as DOB, 'Female' as Gender UNION ALL
      SELECT 2 as ID, 'Bob' as Name, '4/4/1993' as DOB, 'Male' as Gender UNION ALL
      SELECT 3 as ID, 'Charlie' as Name, '2/28/1990' as DOB, 'Male' as Gender UNION ALL
      SELECT 4 as ID, 'David' as Name, '7/1/1977' as DOB, 'Male' as Gender UNION ALL
      SELECT 5 as ID, 'Eden' as Name, '12/22/2002' as DOB, 'Female' as Gender ;;
   } 
  dimension: id {
    sql: ${TABLE}.id ;;
    primary_key: yes
    description: "This is another test" 
  }
  dimension: dob {  sql: ${TABLE}.dob ;; }
  dimension: gender {  sql: ${TABLE}.gender ;; } 
}
