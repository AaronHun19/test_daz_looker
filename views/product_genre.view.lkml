view: product_genre {
  sql_table_name: `infrastructure-162422.Majento.ProductGenre`
    ;;

  dimension: genre {
    type: string
    sql: ${TABLE}.Genre ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductID ;;
    value_format_name: id
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
