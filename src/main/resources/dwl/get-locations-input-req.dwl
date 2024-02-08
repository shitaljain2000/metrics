%dw 2.0
output application/json
---
{
	"query": "query getLocationsList(
					\$filter: LocationFilter
					\$paginationInput: PaginationInput
				) {
					locations(filter: \$filter, paginationInput: \$paginationInput) {
						items {
							id
							name
							lineage
							parentLocation {
								id
								locationStatus
							}
						},
						pageInfo {
							hasNext 
	    					totalElements 
      						totalPages
						}
					}
				}",
	"variables": {
		"filter": {
			"and": {
				"customerId": vars.template_sftp_api_accountId,
				"locationStatus": ["Active"]
			}
		},
		"paginationInput": {
			"pageNumber": 1,
			"pageSize": 100,
			"sortField": "name",
			"sortDirection": "ASC"
		}
	}
}

    
    