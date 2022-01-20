view: order_item {
  sql_table_name: `infrastructure-162422.Majento.OrderItem`
    ;;

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }

  dimension: order_item_id {
    type: string
    sql: ${TABLE}.OrderItemID ;;
    primary_key: yes
    value_format_name: id
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
    value_format_name: id
  }

  dimension_group: purchase {
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
    sql: ${TABLE}.PurchaseTime ;;
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.GrossSales ;;
    hidden: yes
    value_format_name: usd
  }

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
    hidden: yes
    value_format_name: decimal_0
  }

  measure:  total_gross_sales{
    type: sum
    sql: ${gross_sales} ;;
    value_format_name: usd
  }

  measure:  average_gross_sales{
    type: average
    sql: ${gross_sales} ;;
    value_format_name: usd
  }

  measure:  total_units{
    type: sum
    sql: ${units} ;;
    value_format_name: decimal_0
  }
}
