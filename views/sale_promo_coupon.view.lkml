view: sale_promo_coupon {
  sql_table_name: `infrastructure-162422.Majento.SalePromoCoupon`
    ;;

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.CouponCode ;;
    primary_key: yes
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndTime ;;
  }

  dimension: limit_by {
    type: string
    sql: ${TABLE}.LimitBy ;;
  }

  dimension: max_uses {
    type: number
    sql: ${TABLE}.MaxUses ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: segment {
    type: number
    sql: ${TABLE}.Segment ;;
    value_format_name: id
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartTime ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
