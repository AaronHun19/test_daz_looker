connection: "bronto_bigquery"

# include all the views
include: "/views/**/*.view"

explore: customer {
  label: "Customer Sales"
  group_label: "New - Daz 3D"

  join: customer_tag {
    relationship: one_to_many
    sql_on: ${customer.customer_id} = ${customer_tag.customer_id} ;;
    type: left_outer
  }

  join: order {
    relationship: one_to_many
    sql_on: ${customer.customer_id} = ${order.customer_id} ;;
    type: left_outer
  }

  join: order_item {
    relationship: one_to_many
    sql_on: ${order.order_id} = ${order_item.order_id} ;;
    type: left_outer
  }

  join: order_item_refund {
    relationship: one_to_many
    sql_on: ${order.order_id} = ${order_item_refund.order_id} ;;
    type: left_outer
  }

  join: order_item_gift_card {
    relationship: one_to_many
    sql_on: ${order.order_id} = ${order_item_gift_card.order_id} ;;
    type: left_outer
  }

  join: customer_store_credit {
    relationship: one_to_one
    sql_on: ${customer.customer_id} = ${customer_store_credit.customer_id} ;;
    type: left_outer
  }

  join: customer_wishlist {
    relationship: one_to_many
    sql_on: ${customer.customer_id} = ${customer_wishlist.customer_id} ;;
    type: left_outer
  }

  join: customer_download_log {
    relationship: one_to_many
    sql_on: ${customer.customer_id} = ${customer_download_log.customer_id} ;;
    type: left_outer
  }

  join: split_test_assignment {
    relationship: one_to_many
    sql_on: ${customer.customer_id} = ${split_test_assignment.customer_id} ;;
    type: left_outer
  }

  join: split_test {
    relationship: one_to_one
    sql_on: ${split_test_assignment.split_test_id} = ${split_test.split_test_id} AND ${split_test_assignment.group_name} = ${split_test.group_name};;
    type: left_outer
  }

}

explore: product {
  label: "Product Sales"
  group_label: "New - Daz 3D"

  join: order_item {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${order_item.product_id} ;;
    type: left_outer
  }

  join: order {
    relationship: many_to_one
    sql_on: ${order_item.order_id} = ${order.order_id} ;;
    type: left_outer
  }

  join: product_addon {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${product_addon.product_id} ;;
    type: left_outer
  }

  join: product_compat_figure {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${product_compat_figure.product_id} ;;
    type: left_outer
  }

  join: product_compat_software {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${product_compat_software.product_id} ;;
    type: left_outer
  }

  join: product_genre {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${product_genre.product_id} ;;
    type: left_outer
  }

  join: product_sub_product {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${product_sub_product.sub_product_id} ;;
    type: left_outer
  }

  join: product_vendor {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${product_vendor.product_id} ;;
    type: left_outer
  }

  join: customer_wishlist {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${customer_wishlist.product_id} ;;
    type: left_outer
  }

  join: customer_download_log {
    relationship: one_to_many
    sql_on: ${product.product_id} = ${customer_download_log.product_id} ;;
    type: left_outer
  }

}

explore: hourly_revenue {
  group_label: "New - Daz 3D"
}

explore: hourly_revenue_yesterday {
  label: "Hourly Revenue - Yesterday"
  group_label: "New - Daz 3D"
}

explore: daily_revenue {
  group_label: "New - Daz 3D"
}

explore: sale_promo {
  label: "Sale Promotions"
  group_label: "New - Daz 3D"

  join: sale_promo_rule {
    relationship: one_to_many
    sql_on: ${sale_promo.promo_id} = ${sale_promo_rule.promo_id};;
    type: left_outer
    }

  join: sale_promo_rule_discount {
    relationship: one_to_many
    sql_on: ${sale_promo_rule.rule_id} = ${sale_promo_rule_discount.rule_id};;
    type: left_outer
  }
}

explore: sale_promo_coupon {
  label: "Sale Promotion Coupons"
  group_label: "New - Daz 3D"

  join: sale_promo_coupon_use {
    relationship: one_to_many
    sql_on: ${sale_promo_coupon.coupon_code} = ${sale_promo_coupon_use.coupon_code};;
    type: left_outer
  }

  join: customer {
    relationship: many_to_one
    sql_on: ${sale_promo_coupon_use.customer_id} = ${customer.customer_id};;
    type: left_outer
  }
}
