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
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
