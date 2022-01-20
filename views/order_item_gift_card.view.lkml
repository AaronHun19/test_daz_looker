view: order_item_gift_card {
  sql_table_name: `infrastructure-162422.Majento.OrderItemGiftCard`
    ;;

  dimension: gift_card_amount {
    type: number
    sql: ${TABLE}.GiftCardAmount ;;
    value_format_name: usd
  }

  dimension: gift_card_cost {
    type: number
    sql: ${TABLE}.GiftCardCost ;;
    value_format_name: usd
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }

  dimension: order_item_id {
    type: string
    sql: ${TABLE}.OrderItemID ;;
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

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
    value_format_name: decimal_0
  }

  measure: count {
    type: count
    drill_fields: [product.product_id, product.name, order.order_id, order.first_name, order.last_name]
  }
}
