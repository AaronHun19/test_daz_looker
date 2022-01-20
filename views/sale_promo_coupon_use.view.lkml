view: sale_promo_coupon_use {
  sql_table_name: `infrastructure-162422.Majento.SalePromoCouponUse`
    ;;

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.CouponCode ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
    value_format_name: id
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.OrderID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
