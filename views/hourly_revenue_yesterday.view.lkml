view: hourly_revenue_yesterday {
  sql_table_name: `infrastructure-162422.Majento.HourlyRevenueYesterday`
    ;;

  dimension: day_group {
    type: string
    sql: ${TABLE}.DayGroup ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.Hour ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: time_formatted {
    type: string
    sql: ${TABLE}.TimeFormatted ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
