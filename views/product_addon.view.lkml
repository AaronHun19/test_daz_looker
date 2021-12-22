view: product_addon {
  sql_table_name: `infrastructure-162422.Majento.ProductAddon`
    ;;

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
