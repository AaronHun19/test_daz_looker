view: product_compat_software {
  sql_table_name: `infrastructure-162422.Majento.ProductCompatSoftware`
    ;;

  dimension: compat_software {
    type: string
    sql: ${TABLE}.CompatSoftware ;;
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
