package kubernetes.admission

import data.kubernetes.namespaces

operations = {"CREATE", "UPDATE"}

deny[msg] {
	input.request.object.metadata.namespace == "default"
	operations[input.request.operation]
	msg := "Not allowd in default"
}

