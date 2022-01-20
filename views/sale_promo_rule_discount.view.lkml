view: sale_promo_rule_discount {
  sql_table_name: `infrastructure-162422.Majento.SalePromoRuleDiscount`
    ;;

  dimension: rule_discount {
    type: string
    sql: ${TABLE}.RuleDiscount ;;
  }

  dimension: rule_discount_id {
    type: string
    sql: ${TABLE}.RuleDiscountID ;;
    primary_key: yes
  }

  dimension: rule_id {
    type: string
    sql: ${TABLE}.RuleID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
