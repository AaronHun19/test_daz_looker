view: product_sub_product {
  sql_table_name: `infrastructure-162422.Majento.ProductSubProduct`
    ;;

  dimension: parent_name {
    type: string
    sql: ${TABLE}.ParentName ;;
  }

  dimension: parent_product_id {
    type: number
    sql: ${TABLE}.ParentProductID ;;
  }

  dimension: sub_product_id {
    type: number
    sql: ${TABLE}.SubProductID ;;
  }

  measure: count {
    type: count
    drill_fields: [parent_name]
  }
}
