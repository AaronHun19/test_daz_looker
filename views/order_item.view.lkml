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
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
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
  }

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
    hidden: yes
  }

  measure:  total_gross_sales{
    type: sum
    sql: ${gross_sales} ;;
  }

  measure:  total_units{
    type: sum
    sql: ${units} ;;
  }
}
