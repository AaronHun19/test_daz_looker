view: product_compat_figure {
  sql_table_name: `infrastructure-162422.Majento.ProductCompatFigure`
    ;;

  dimension: compat_figure {
    type: string
    sql: ${TABLE}.CompatFigure ;;
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
