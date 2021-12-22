view: order_item_gift_card {
  sql_table_name: `infrastructure-162422.Majento.OrderItemGiftCard`
    ;;

  dimension: gift_card_amount {
    type: number
    sql: ${TABLE}.GiftCardAmount ;;
  }

  dimension: gift_card_cost {
    type: number
    sql: ${TABLE}.GiftCardCost ;;
  }

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
  }

  measure: count {
    type: count
    drill_fields: [product.product_id, product.name, order.order_id, order.first_name, order.last_name]
  }
}
