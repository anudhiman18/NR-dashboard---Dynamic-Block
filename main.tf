resource "newrelic_one_dashboard" "dashboard" {
  name        = var.dashboard.name
  permissions = var.dashboard.permissions

  page {
    name = var.dashboard.pagename

   dynamic "widget_billboard" {
        for_each = var.dashboard.widget1
        iterator = mywidget

     content{ 
        title  = mywidget.value.title
        row    = mywidget.value.row
        column = mywidget.value.column
        width  = mywidget.value.width
        height = mywidget.value.height

        nrql_query {
            query = mywidget.value.query
        }
    }
    }
        dynamic "widget_area" {
        for_each = var.dashboard.widget2
        iterator = mywidget
     content{ 
        title  = mywidget.value.title
        row    = mywidget.value.row
        column = mywidget.value.column
        width  = mywidget.value.width
        height = mywidget.value.height

        nrql_query {
            query = mywidget.value.query
        }
    }
  }
}
}
