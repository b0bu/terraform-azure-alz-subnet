output "subnets" {
    value = {
    for id, subnet in azurerm_subnet.subnet :  
    "${subnet.name}-${id}" => {
        name = subnet.name
        resource_group_name = subnet.resource_group_name
        id = subnet.id
    }
    }
}