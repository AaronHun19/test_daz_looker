view: split_test {
  sql_table_name: `infrastructure-162422.Majento.SplitTest`
    ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.Active ;;
  }

  dimension: control_group_percent {
    type: number
    sql: ${TABLE}.ControlGroupPercent ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.Enabled ;;
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

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LastModified ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension: split_test_id {
    type: number
    sql: ${TABLE}.SplitTestID ;;
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

  dimension: test_name {
    type: string
    sql: ${TABLE}.TestName ;;
  }

  dimension: test_percent {
    type: number
    sql: ${TABLE}.TestPercent ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, test_name]
  }
}
