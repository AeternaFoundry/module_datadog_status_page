resource "datadog_status_page" "status_pages" {
  for_each = var.status_pages

  domain_prefix               = each.value.domain_prefix
  name                        = each.value.name
  type                        = each.value.type
  visualization_type          = each.value.visualization_type
  company_logo                = each.value.company_logo
  email_header_image          = each.value.email_header_image
  favicon                     = each.value.favicon
  slack_app_icon              = each.value.slack_app_icon
  slack_subscriptions_enabled = each.value.slack_subscriptions_enabled
  subscriptions_enabled       = each.value.subscriptions_enabled
}

