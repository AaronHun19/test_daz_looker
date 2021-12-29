view: order {
  sql_table_name: `infrastructure-162422.Majento.Order`
    ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.OrderID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: address_id {
    type: number
    sql: ${TABLE}.AddressID ;;
  }

  dimension: charge_total {
    type: number
    sql: ${TABLE}.ChargeTotal ;;
  }

  dimension: checkout_type {
    type: string
    sql: ${TABLE}.CheckoutType ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.CouponCode ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}.CustomerEmail ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: gift_card_amount {
    type: number
    sql: ${TABLE}.GiftCardAmount ;;
  }

  dimension: gift_card_cost {
    type: number
    sql: ${TABLE}.GiftCardCost ;;
  }

  dimension: grand_total {
    type: number
    sql: ${TABLE}.GrandTotal ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.GrossRevenue ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension_group: prior_purchase {
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
    sql: ${TABLE}.PriorPurchaseTime ;;
  }

  dimension: purchase_rank {
    type: number
    sql: ${TABLE}.PurchaseRank ;;
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

  dimension: refund_amount {
    type: number
    sql: ${TABLE}.RefundAmount ;;
  }

  dimension: shipping {
    type: number
    sql: ${TABLE}.Shipping ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: store_credit_used {
    type: number
    sql: ${TABLE}.StoreCreditUsed ;;
  }

  dimension: sub_total {
    type: number
    sql: ${TABLE}.SubTotal ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.Tax ;;
  }

  dimension: tax_location {
    type: string
    sql: ${TABLE}.TaxLocation ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.Telephone ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.TransactionID ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZipCode ;;
  }

  dimension: dormant_days {
    type: number
    sql: Date_Diff(${purchase_date},${prior_purchase_date},DAY) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: buyer_count {
    type: count_distinct
    sql: ${customer_id} ;;
  }

  measure: average_gross_revenue {
    type: average
    sql: ${gross_revenue} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_id,
      first_name,
      last_name,
      customer.created_time,
      customer.first_name,
      customer.customer_id,
      customer.last_name,
      order_item_gift_card.count,
      order_item_refund.count,
      order_item.count
    ]
  }
}
