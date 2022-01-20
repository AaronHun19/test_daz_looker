view: customer_download_log {
  sql_table_name: `infrastructure-162422.Majento.CustomerDownloadLog`
    ;;

  dimension: actual_download_count {
    type: number
    sql: ${TABLE}.ActualDownloadCount ;;
  }

  dimension_group: actual_first_download {
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
    sql: ${TABLE}.ActualFirstDownload ;;
  }

  dimension_group: actual_last_download {
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
    sql: ${TABLE}.ActualLastDownload ;;
  }

  dimension: central_download_count {
    type: number
    sql: ${TABLE}.CentralDownloadCount ;;
  }

  dimension_group: central_first_download {
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
    sql: ${TABLE}.CentralFirstDownload ;;
  }

  dimension_group: central_last_download {
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
    sql: ${TABLE}.CentralLastDownload ;;
  }

  dimension: connect_download_count {
    type: number
    sql: ${TABLE}.ConnectDownloadCount ;;
  }

  dimension_group: connect_first_download {
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
    sql: ${TABLE}.ConnectFirstDownload ;;
  }

  dimension_group: connect_last_download {
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
    sql: ${TABLE}.ConnectLastDownload ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
    value_format_name: id
  }

  dimension: encrypted_download_count {
    type: number
    sql: ${TABLE}.EncryptedDownloadCount ;;
  }

  dimension_group: encrypted_first_download {
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
    sql: ${TABLE}.EncryptedFirstDownload ;;
  }

  dimension_group: encrypted_last_download {
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
    sql: ${TABLE}.EncryptedLastDownload ;;
  }

  dimension: hpcldownload_count {
    type: number
    sql: ${TABLE}.HPCLDownloadCount ;;
  }

  dimension_group: hpclfirst_download {
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
    sql: ${TABLE}.HPCLFirstDownload ;;
  }

  dimension_group: hpcllast_download {
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
    sql: ${TABLE}.HPCLLastDownload ;;
  }

  dimension: manual_download_count {
    type: number
    sql: ${TABLE}.ManualDownloadCount ;;
  }

  dimension_group: manual_first_download {
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
    sql: ${TABLE}.ManualFirstDownload ;;
  }

  dimension_group: manual_last_download {
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
    sql: ${TABLE}.ManualLastDownload ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductID ;;
  }

  dimension: zip_download_count {
    type: number
    sql: ${TABLE}.ZipDownloadCount ;;
  }

  dimension_group: zip_first_download {
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
    sql: ${TABLE}.ZipFirstDownload ;;
  }

  dimension_group: zip_last_download {
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
    sql: ${TABLE}.ZipLastDownload ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
