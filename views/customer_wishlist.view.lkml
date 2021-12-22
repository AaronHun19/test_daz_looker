view: customer_wishlist {
  sql_table_name: `infrastructure-162422.Majento.CustomerWishlist`
    ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductID ;;
  }

  dimension_group: wishlist {
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
    sql: ${TABLE}.WishlistTime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
