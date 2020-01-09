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

# sample access grant - not working; see below
access_grant: pmc_user {
  user_attribute: pmc
  allowed_values: [ "@{pmc}" ]
}



explore: apt_unit {

  #required_access_grants: [pmc_user] #- not working... the model is not visible even with attribute set in user

  label: "PMC: @{pmc}"
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
