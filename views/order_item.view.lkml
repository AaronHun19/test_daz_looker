view: order_item {
  sql_table_name: `infrastructure-162422.Majento.OrderItem`
    ;;

  # Aaron was also here testing git hub

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OrderID ;;
  }

  dimension: order_item_id {
    type: string
    sql: ${TABLE}.OrderItemID ;;
    primary_key: yes
    value_format_name: id
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
    value_format_name: id
  }

  dimension_group: purchase {
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
    sql: ${TABLE}.PurchaseTime ;;
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.GrossSales ;;
    hidden: yes
    value_format_name: usd
  }

  dimension: units {
    type: number
    sql: ${TABLE}.Units ;;
    hidden: yes
    value_format_name: decimal_0
  }

  measure:  total_gross_sales{
    type: sum
    sql: ${gross_sales} ;;
    value_format_name: usd
  }

  measure:  average_gross_sales{
    type: average
    sql: ${gross_sales} ;;
    value_format_name: usd
  }

  measure:  total_units{
    type: sum
    sql: ${units} ;;
    value_format_name: decimal_0
  }

  filter: manual_launch_date {
    type: date
    datatype: date
    default_value: "2020-01-01"
  }

  measure: manual_launch_sales_1_day {
    description: "based on manual Launch date"
    type: sum
    sql:case when ${purchase_date} = {% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %}
      then ${gross_sales} end;;
    value_format_name: usd
  }

  measure: manual_launch_sales_30_day {
    description: "based on manual Launch date"
    type: sum
    sql:case when ${purchase_date} between {% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %} and date_add({% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %}, interval 29 day)
      then ${gross_sales} end;;
    value_format_name: usd
  }

  measure: manual_launch_sales_60_day {
    description: "based on manual Launch date"
    type: sum
    sql:case when ${purchase_date} between {% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %} and date_add({% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %}, interval 59 day)
      then ${gross_sales} end;;
    value_format_name: usd
  }

  measure: manual_launch_sales_90_day {
    description: "based on manual Launch date"
    type: sum
    sql:case when ${purchase_date} between {% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %} and date_add({% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %}, interval 89 day)
      then ${gross_sales} end;;
    value_format_name: usd
  }

  measure: manual_launch_sales_lifetime {
    description: "based on manual Launch date"
    type: sum
    sql:case when ${purchase_date} >= {% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %}
      then ${gross_sales} end;;
    value_format_name: usd
  }

  measure: manual_launch_units_lifetime {
    description: "based on manual Launch date"
    type: sum
    sql:case when ${purchase_date} >= {% if order_item.manual_launch_date._is_filtered %} {%date_start manual_launch_date%} {% else %} '2000-01-01' {% endif %}
      then ${units} end;;
    value_format_name: decimal_0
  }
}
