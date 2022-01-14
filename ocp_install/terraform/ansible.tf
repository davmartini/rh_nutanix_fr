resource "local_file" "ansible_inventory" {
  content = templatefile("templates/inventory.tmpl",
    {
     ip_infravm = nutanix_virtual_machine.ocp-infra.nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-bootstrap = nutanix_virtual_machine.ocp-bootstrap[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-master = nutanix_virtual_machine.ocp-master[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-worker = nutanix_virtual_machine.ocp-worker[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
    }
  )
  filename = "../ansible/templates/inventory.j2"
}

resource "local_file" "named" {
  content = templatefile("templates/named.tmpl",
    {
     ip_infravm = nutanix_virtual_machine.ocp-infra.nic_list_status.0.ip_endpoint_list[0]["ip"]
    }
  )
  filename = "../ansible/templates/named.conf.j2"
}

resource "local_file" "nameddb" {
  content = templatefile("templates/nameddb.tmpl",
    {
     ip_infravm = nutanix_virtual_machine.ocp-infra.nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-bootstrap = nutanix_virtual_machine.ocp-bootstrap[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-master = nutanix_virtual_machine.ocp-master[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-worker = nutanix_virtual_machine.ocp-worker[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
    }
  )
  filename = "../ansible/templates/nameddb.j2"
}

resource "local_file" "namedrev" {
  content = templatefile("templates/namedrev.tmpl",
    {
     ip_infravm = nutanix_virtual_machine.ocp-infra.nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-bootstrap = nutanix_virtual_machine.ocp-bootstrap[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-master = nutanix_virtual_machine.ocp-master[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-worker = nutanix_virtual_machine.ocp-worker[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
    }
  )
  filename = "../ansible/templates/namedrev.j2"
}

resource "local_file" "haproxy" {
  content = templatefile("templates/haproxy.tmpl",
    {
     ip_infravm = nutanix_virtual_machine.ocp-infra.nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-bootstrap = nutanix_virtual_machine.ocp-bootstrap[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-master = nutanix_virtual_machine.ocp-master[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
     ip_ocp-worker = nutanix_virtual_machine.ocp-worker[*].nic_list_status.0.ip_endpoint_list[0]["ip"]
    }
  )
  filename = "../ansible/templates/haproxy.j2"
}
