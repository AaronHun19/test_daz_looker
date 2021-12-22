view: geography_us {
  sql_table_name: `infrastructure-162422.Majento.GeographyUS`
    ;;

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.Sort ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
