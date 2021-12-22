view: customer_store_credit {
  sql_table_name: `infrastructure-162422.Majento.CustomerStoreCredit`
    ;;

  dimension: balance {
    type: number
    sql: ${TABLE}.Balance ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension_group: recent_credit {
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
    sql: ${TABLE}.RecentCredit ;;
  }

  dimension_group: recent_debit {
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
    sql: ${TABLE}.RecentDebit ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
