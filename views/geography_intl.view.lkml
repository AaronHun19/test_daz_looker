view: geography_intl {
  sql_table_name: `infrastructure-162422.Majento.GeographyIntl`
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
