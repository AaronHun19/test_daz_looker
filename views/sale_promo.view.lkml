view: sale_promo {
  sql_table_name: `infrastructure-162422.Majento.SalePromo`
    ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.Active ;;
  }

  dimension: always {
    type: yesno
    sql: ${TABLE}.Always ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.Enabled ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndTime ;;
  }

  dimension: image_active {
    type: yesno
    sql: ${TABLE}.ImageActive ;;
  }

  dimension_group: image_created {
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
    sql: ${TABLE}.ImageCreatedTime ;;
  }

  dimension: image_file_path {
    type: string
    sql: ${TABLE}.ImageFilePath ;;
  }

  dimension: image_height {
    type: number
    sql: ${TABLE}.ImageHeight ;;
    value_format_name: decimal_0
  }

  dimension_group: image_modified {
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
    sql: ${TABLE}.ImageModifiedTime ;;
  }

  dimension: image_original_size {
    type: number
    sql: ${TABLE}.ImageOriginalSize ;;
    value_format_name: decimal_0
  }

  dimension: image_priority {
    type: number
    sql: ${TABLE}.ImagePriority ;;
  }

  dimension: image_thumbnail_b64 {
    type: string
    sql: ${TABLE}.ImageThumbnailB64 ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.ImageURL ;;
  }

  dimension: image_width {
    type: number
    sql: ${TABLE}.ImageWidth ;;
    value_format_name: decimal_0
  }

  dimension: is_catalog {
    type: yesno
    sql: ${TABLE}.IsCatalog ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.Priority ;;
  }

  dimension: promo_id {
    type: number
    sql: ${TABLE}.PromoID ;;
    primary_key: yes
    value_format_name: id
  }

  dimension: promo_url {
    type: string
    sql: ${TABLE}.PromoURL ;;
  }

  dimension: stack_tag {
    type: string
    sql: ${TABLE}.StackTag ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartTime ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
