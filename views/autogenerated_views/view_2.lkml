view: view_2 {
  sql_table_name: `<table-name>`
    ;;

  dimension: date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  
  dimension: item_id {
    type: string
    description: "Unique identifier for each item"
    sql: ${TABLE}.itemId ;;
  }

  dimension: visits {
    type: number
    description: "Number of visits"
    sql: ${TABLE}.visits ;;
  }

  measure: count {
    type: count
    drill_fields: [item_id]
  }
}
