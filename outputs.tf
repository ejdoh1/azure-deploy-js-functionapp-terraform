output "api_url" {
  value = "https://${azurerm_function_app.main.default_hostname}/api/my-function-app"
}
