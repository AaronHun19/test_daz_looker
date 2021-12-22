view: product {
  sql_table_name: `infrastructure-162422.Majento.Product`
    ;;
  drill_fields: [product_id]

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductID ;;
  }

  dimension: game_license_price {
    type: number
    sql: ${TABLE}.GameLicensePrice ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IsActive ;;
  }

  dimension: is_addon {
    type: yesno
    sql: ${TABLE}.IsAddon ;;
  }

  dimension: is_bundle {
    type: yesno
    sql: ${TABLE}.IsBundle ;;
  }

  dimension: is_daz_original {
    type: yesno
    sql: ${TABLE}.IsDazOriginal ;;
  }

  dimension: is_downloadable {
    type: yesno
    sql: ${TABLE}.IsDownloadable ;;
  }

  dimension: is_gift_card {
    type: yesno
    sql: ${TABLE}.IsGiftCard ;;
  }

  dimension: is_hd {
    type: yesno
    sql: ${TABLE}.IsHD ;;
  }

  dimension: is_plat_club_membership {
    type: yesno
    sql: ${TABLE}.IsPlatClubMembership ;;
  }

  dimension: is_platinum_club {
    type: yesno
    sql: ${TABLE}.IsPlatinumClub ;;
  }

  dimension: launch_sales1_day {
    type: number
    sql: ${TABLE}.LaunchSales1Day ;;
  }

  dimension: launch_sales30_day {
    type: number
    sql: ${TABLE}.LaunchSales30Day ;;
  }

  dimension: launch_sales60_day {
    type: number
    sql: ${TABLE}.LaunchSales60Day ;;
  }

  dimension: launch_sales90_day {
    type: number
    sql: ${TABLE}.LaunchSales90Day ;;
  }

  dimension: launch_sales_lifetime {
    type: number
    sql: ${TABLE}.LaunchSalesLifetime ;;
  }

  dimension_group: launch {
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
    sql: ${TABLE}.LaunchTime ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.ProductPrice ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  measure: count {
    type: count
    drill_fields: [product_id, name, order_item_gift_card.count, order_item_refund.count, order_item.count]
  }
}
