view: product_sub_product {
  sql_table_name: `infrastructure-162422.Majento.ProductSubProduct`
    ;;

  dimension_group: parent_launch {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ParentLaunchTime ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}.ParentName ;;
  }

  dimension: parent_product_id {
    type: number
    sql: ${TABLE}.ParentProductID ;;
    value_format_name: id
  }

  dimension: sub_product_id {
    type: number
    sql: ${TABLE}.SubProductID ;;
    value_format_name: id
  }

  measure: count {
    type: count
    drill_fields: [parent_name]
  }
}
