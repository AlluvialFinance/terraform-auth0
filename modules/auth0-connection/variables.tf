variable "strategy" {
  description = "The strategy of the connection, e.g., 'email', 'sms', 'okta', etc."
  type        = string
  default     = ""
}

variable "name" {
  description = "The name of the connection. If the strategy is 'email' or 'sms', this will be set to the strategy name."
  type        = string
  default     = ""
}

variable "from" {
  description = "The 'from' email address for email connections."
  type        = string
  default     = "{{ application.name }} \u003croot@auth0.com\u003e"
}

variable "subject" {
  description = "The subject line for email connections."
  type        = string
  default     = "Welcome to {{ application.name }}"
}

variable "syntax" {
  description = "Syntax of the template body."
  type        = string
  default     = "liquid"
}

variable "template" {
  description = "The template body for email connections."
  type        = string
  default     = "<html>This is the body of the email</html>"
}

variable "disable_signup" {
  description = "Indicates whether signup is disabled for this connection."
  type        = bool
  default     = true
}

variable "brute_force_protection" {
  description = "Indicates whether brute force protection is enabled for this connection."
  type        = bool
  default     = true
}

variable "non_persistent_attrs" {
  description = "If there are user fields that should not be stored in Auth0 databases due to privacy reasons, you can add them to the DenyList here."
  type        = list(string)
  default     = []
}

variable "totp_time_step" {
  description = "Seconds between allowed generation of new passwords."
  type        = number
  default     = 180
}

variable "totp_length" {
  description = "Length of the TOTP code."
  type        = number
  default     = 6
}

variable "enabled_clients" {
  description = "List of client IDs that are allowed to use this connection."
  type        = list(string)
  default     = []
}
