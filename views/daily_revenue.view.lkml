view: daily_revenue {
  sql_table_name: `infrastructure-162422.Majento.DailyRevenue`
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: revenue_goal {
    type: number
    sql: ${TABLE}.RevenueGoal ;;
    value_format_name: usd_0
    hidden: yes
  }

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format_name: usd_0
  }

  measure: total_revenue_goal {
    type: sum
    sql: ${revenue_goal} ;;
    value_format_name: usd_0
  }
}
