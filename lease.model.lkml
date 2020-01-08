connection: "vista-dev-sandbox"

include: "views/*"                       # include all views in this project

# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: apt_unit {

  join: lease {
    relationship: one_to_one
    sql_on: ${lease.unit} = ${apt_unit.id} ;;
  }

  join: lease_participant {
    relationship: one_to_one
    sql_on:  ${lease.id} = ${lease_participant.lease} ;;
  }

  join : customer {
    relationship: one_to_one
    sql_on: {{$lease_participant.customer}} = ${customer.id} ;;
  }

}
