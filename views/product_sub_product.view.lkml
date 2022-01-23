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

  dimension: launch_sales1_day {
    type: number
    sql: ${TABLE}.LaunchSales1Day ;;
    hidden: yes
  }

  dimension: launch_sales30_day {
    type: number
    sql: ${TABLE}.LaunchSales30Day ;;
    hidden: yes
  }

  dimension: launch_sales60_day {
    type: number
    sql: ${TABLE}.LaunchSales60Day ;;
    hidden: yes
  }

  dimension: launch_sales90_day {
    type: number
    sql: ${TABLE}.LaunchSales90Day ;;
    hidden: yes
  }

  dimension: launch_sales_lifetime {
    type: number
    sql: ${TABLE}.LaunchSalesLifetime ;;
    hidden: yes
  }

  dimension: launch_units_lifetime {
    type: number
    sql: ${TABLE}.LaunchUnitsLifetime ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: [parent_name]
  }

  measure: bundle_sales_1_day {
    type: sum
    sql: ${launch_sales1_day} ;;
    value_format_name: usd
  }

  measure: bundle_sales_30_day {
    type: sum
    sql: ${launch_sales30_day} ;;
    value_format_name: usd
  }

  measure: bundle_sales_60_day {
    type: sum
    sql: ${launch_sales60_day} ;;
    value_format_name: usd
  }

  measure: bundle_sales_90_day {
    type: sum
    sql: ${launch_sales90_day} ;;
    value_format_name: usd
  }

  measure: bundle_sales_lifetime {
    type: sum
    sql: ${launch_sales_lifetime} ;;
    value_format_name: usd
  }

  measure: bundle_units_lifetime {
    type: sum
    sql: ${launch_units_lifetime} ;;
    value_format_name: decimal_0
  }
}
