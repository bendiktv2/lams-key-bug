include: "/views/autogenerated_views/view_1.view.lkml"
include: "/views/autogenerated_views/view_2.view.lkml"
include: "/views/refined_views/r_view_1.view.lkml"
include: "/views/refined_views/r_view_2.view.lkml"

explore: works {
  label: "Explore that works (sql_on)"
  from:  view_2
  join: view_1 {
    sql_on: ${view_1.pk1_item_id} = ${works.pk2_item_id} ;;
    type: left_outer
    relationship: many_to_one
  }
}