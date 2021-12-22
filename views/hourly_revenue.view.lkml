view: hourly_revenue {
  sql_table_name: `infrastructure-162422.Majento.HourlyRevenue`
    ;;

  dimension: current_hour {
    type: number
    sql: ${TABLE}.CurrentHour ;;
  }

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
    hidden: yes
  }

  dimension: time_formatted {
    type: string
    sql: ${TABLE}.TimeFormatted ;;
  }

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
    value_format_name: usd_0
  }

  measure: todays_total_revenue {
    type: sum
    sql:  if(${day_group}="Today", ${revenue}, 0);;
    hidden: yes
  }

  measure: todays_partial_revenue {
    type: sum
    sql:  if(${day_group}="Today" and ${hour}<${current_hour}, ${revenue},0);;
    hidden: yes
  }

  measure: prior_total_revenue {
    type: sum
    sql:  if(${day_group}="Prior 7 Day Average", ${revenue}, 0);;
    value_format_name: usd_0
    #hidden: yes
  }

  measure: prior_partial_revenue {
    type: sum
    sql:  if(${day_group}="Prior 7 Day Average" and ${hour}<${current_hour}, ${revenue},0);;
    hidden: yes
  }

  measure: todays_projected_revenue {
    type: number
    sql: ${todays_partial_revenue}*${prior_total_revenue}/${prior_partial_revenue} ;;
    value_format_name: usd_0
  }
}
