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
