# Variables

## Setup

- `os`
  - `time`
    - `timezone` 
      - This is timezone.
      - Example: `Europe/Bucharest`
    - `ntp`
      - `server`
        - The IP address of the ntp server.
        - Example: `10.0.0.1`
- `calico`
  - `version`
    - Example: `3.24.1`

- `containerd`
  - `version`
    - Example: `latest`
  - `crictl`
    - `version`
      - Example: `1.25.0`

- `iscsi`
  `initiator_name`
    - Example: `changeme`

- `kubernetes`
  - `version`
    - Example: `1.25.0-00`
  - `upgrade`
    - Example: `false`
  - `control_plane`
    - `endpoint`
      - Example: kubernetes.groot.tethryus.ro:6443
    - `lb_cidr` 
      - Example: "10.69.64.0/18"
    - `pod_network_cidr` 
      - Example: "10.69.128.0/18"
    - `service_cidr` 
      - Example: "10.69.192.0/18"
