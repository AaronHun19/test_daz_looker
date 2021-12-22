view: customer {
  sql_table_name: `infrastructure-162422.Majento.Customer`
    ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: confirmed {
    type: yesno
    sql: ${TABLE}.Confirmed ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CreatedTime ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension_group: ftbtime {
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
    sql: ${TABLE}.FTBTime ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GroupID ;;
  }

  dimension: handle {
    type: string
    sql: ${TABLE}.Handle ;;
  }

  dimension: is_disabled {
    type: yesno
    sql: ${TABLE}.IsDisabled ;;
  }

  dimension: is_fraud {
    type: yesno
    sql: ${TABLE}.IsFraud ;;
  }

  dimension: is_ftb {
    type: yesno
    sql: ${TABLE}.IsFTB ;;
  }

  dimension: is_stb {
    type: yesno
    sql: ${TABLE}.IsSTB ;;
  }

  dimension_group: last_logged_in {
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
    sql: ${TABLE}.LastLoggedIn ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: revenue1_year {
    type: number
    sql: ${TABLE}.Revenue1Year ;;
  }

  dimension: revenue_lifetime {
    type: number
    sql: ${TABLE}.RevenueLifetime ;;
  }

  dimension: signed_eulaversion {
    type: string
    sql: ${TABLE}.SignedEULAVersion ;;
  }

  dimension_group: stbtime {
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
    sql: ${TABLE}.STBTime ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id, first_name, last_name, order.count, customer_tag.count]
  }
}
