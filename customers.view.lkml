view: customers {
  sql_table_name: `my_project.dataset.customers` ;;

  filter: customer_id_filter {
    type: number
    description: "Filter orders by customer ID"
    sql: ${TABLE}.customer_id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: number
    sql: ${TABLE}.customer_name ;;
  }

  measure: avg_customer_age {
    type: avg
    label: "Avg Customer Age"
    sql: ${age} ;;
  }

  measure: customer_count {
    type: count_distinct
    sql: ${TABLE}.customer_id ;;
  }
}
 