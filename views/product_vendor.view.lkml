view: product_vendor {
  sql_table_name: `infrastructure-162422.Majento.ProductVendor`
    ;;

  dimension: commission_percentage {
    type: number
    sql: ${TABLE}.CommissionPercentage ;;
  }

  dimension: hide {
    type: yesno
    sql: ${TABLE}.Hide ;;
  }

  dimension: minimum {
    type: number
    sql: ${TABLE}.Minimum ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductID ;;
    value_format_name: id
  }

  dimension: vendor_id {
    type: number
    sql: ${TABLE}.VendorID ;;
    value_format_name: id
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.VendorName ;;
  }

  measure: count {
    type: count
    drill_fields: [vendor_name]
  }
}
