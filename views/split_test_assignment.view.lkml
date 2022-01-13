view: split_test_assignment {
  sql_table_name: `infrastructure-162422.Majento.SplitTestAssignment`
    ;;

  dimension_group: assigned {
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
    sql: ${TABLE}.AssignedTime ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PersonID ;;
  }

  dimension: split_test_id {
    type: number
    sql: ${TABLE}.SplitTestID ;;
  }

  dimension: test_assigned_id {
    type: string
    sql: ${TABLE}.TestAssignedID ;;
    primary_key: yes
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
