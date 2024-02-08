%dw 2.0
output application/json

---
{
    "query": "mutation AddMeasurement(\$input: MeasurementCreateInput!) {
				addMeasurement(input: \$input) {
					id		
				}
			}",
				
    "variables": {
		"input": vars.addMeasurementInput
	}
}

    
    
    