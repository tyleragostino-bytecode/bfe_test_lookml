view: user_attributes {
  derived_table: {
    sql:
      SELECT 1 as ID, 1 as User_ID, 'Favorite Color' as Attribute, 'Green' as Attribute_Value
    ;;
  }
  dimension: id {
    sql: ${TABLE}.id ;;
  }
  dimension: user_id {
    sql: ${TABLE}.user_id ;;
  }
  dimension: attribute {
    sql: ${TABLE}.attribute ;;
  }
  dimension: attribute_value {
    sql: ${TABLE}.attribute_value ;;
  }
}
