view: view_1 {
  sql_table_name: `<table-name>`
    ;;

  dimension: item_id {
    type: string
    description: "Unique identifier for each item"
    sql: ${TABLE}.itemId ;;
  }

  dimension: section {
    type: string
    description: "Item section"
    sql: ${TABLE}.section ;;
  }

  measure: count {
    type: count
    drill_fields: [section]
  }
}
