#connection: "ernesto-dev-sandbox"
connection: "vista-dev-sandbox"

include: "views_no_param/*"                       # include all views in this project
include: "multitenant.dashboard.lookml"   # include a LookML dashboard called my_dashboard

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

explore: building_user_attribute_schema {

}
