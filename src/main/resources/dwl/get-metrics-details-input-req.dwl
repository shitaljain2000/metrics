%dw 2.0
output application/json
---
{
    "query": "query Metrics(
				  \$paginationInput: PaginationInput,
				  \$filterInput: MetricCustomerFilterInput,
				  \$searchTerm: String
				) {
				  metrics(
				    paginationInput: \$paginationInput,
				    filterInput: \$filterInput,
				    searchTerm: \$searchTerm
				  ) {
				    items {
				      id
				    }
				  }
				}",
				
    "variables": {
			"filterInput": {
				"customerID": vars.template_sftp_api_accountId,
				"and": {
					"metricRegistrationCode": [
						vars.metricRegistrationCode
					]
				}
			},
			"paginationInput": {
				"pageNumber": 1,
				"pageSize": 1000,
				"sortField": "name",
				"sortDirection": "ASC"
			}
		}
}