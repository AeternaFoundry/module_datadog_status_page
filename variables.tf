variable "status_pages" {
  description = <<EOT
Map of status_pages, attributes below
Required:
    - domain_prefix
    - name
    - type
    - visualization_type
Optional:
    - company_logo
    - email_header_image
    - favicon
    - slack_app_icon
    - slack_subscriptions_enabled
    - subscriptions_enabled
EOT

  type = map(object({
    domain_prefix               = string
    name                        = string
    type                        = string
    visualization_type          = string
    company_logo                = optional(string)
    email_header_image          = optional(string)
    favicon                     = optional(string)
    slack_app_icon              = optional(string)
    slack_subscriptions_enabled = optional(bool)
    subscriptions_enabled       = optional(bool)
  }))
}

