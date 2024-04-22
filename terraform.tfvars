dashboard = {
 name        = "New Relic Terraform Dashboard"
 permissions = "public_read_only"

   pagename = "My Dashboard"
 widget1 =[
{
    title  = "widget1"
      row    = 1
      column = 1
      width  = 4
      height = 4
      query="FROM Transaction SELECT rate(count(*), 1 minute)" 
},
{
      title  = "widget2"
      row    = 1
      column = 5
      width  = 4
      height = 4
      query="FROM Transaction SELECT rate(count(*), 1 minute)" 
},

{
    title  = "widget3"
      row    = 1
      column = 9
      width  = 4
      height = 4
      query="FROM Transaction SELECT rate(count(*), 1 minute)" 
},
 ]
  widget2 = [
    {
    title  = "widget1"
      row    = 1
      column = 1
      width  = 4
      height = 4
      query="FROM Transaction SELECT rate(count(*), 1 minute)" 
},
{
      title  = "widget2"
      row    = 1
      column = 5
      width  = 4
      height = 4
      query="FROM Transaction SELECT rate(count(*), 1 minute)" 
},

{
    title  = "widget3"
      row    = 1
      column = 9
      width  = 4
      height = 4
      query="FROM Transaction SELECT rate(count(*), 1 minute)" 
}
  ]




  }
 