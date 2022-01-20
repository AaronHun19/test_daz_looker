view: sale_promo_rule {
  sql_table_name: `infrastructure-162422.Majento.SalePromoRule`
    ;;

  dimension: promo_id {
    type: number
    sql: ${TABLE}.PromoID ;;
    value_format_name: id
  }

  dimension: rule_id {
    type: string
    sql: ${TABLE}.RuleID ;;
    primary_key: yes
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.RuleName ;;
  }

  dimension: rule_user_filter {
    type: string
    sql: ${TABLE}.RuleUserFilter ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_name]
  }
}
