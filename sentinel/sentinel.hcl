#this file defines the enforcement level for each policy

policy "enforce-mandatory-tags" {
    enforcement_level = "hard-mandatory"
}

policy "restrict-publishers-of-current-vms" {
    enforcement_level = "hard-mandatory"
}

policy "restrict-app-service-to-https" {
    enforcement_level = "hard-mandatory"
}

policy "restrict-vm-size" {
    enforcement_level = "hard-mandatory"
}
