view: order_item_refund {
  sql_table_name: `infrastructure-162422.Majento.OrderItemRefund`
    ;;

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }

  dimension: order_item_id {
    type: string
    sql: ${TABLE}.OrderItemID ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: refund_amount {
    type: number
    sql: ${TABLE}.RefundAmount ;;
  }

  dimension_group: refund {
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
    sql: ${TABLE}.RefundTime ;;
  }

  measure: count {
    type: count
    drill_fields: [product.product_id, product.name, order.order_id, order.first_name, order.last_name]
  }
}
