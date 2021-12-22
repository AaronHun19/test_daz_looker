view: customer_tag {
  sql_table_name: `infrastructure-162422.Majento.CustomerTag`
    ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.Tag ;;
  }

  measure: count {
    type: count
    drill_fields: [customer.first_name, customer.customer_id, customer.last_name]
  }
}
