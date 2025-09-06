# SSHD Role

Configures SSH daemon with sensible security settings.

## Description

- Deploys custom sshd_config with security settings
- Configures access restrictions based on network ranges
- Sets up group-based access controls
- Ensures SSH service is enabled and running

## Requirements

- Ansible 2.9+

## Role Variables

| Variable | Default Value | Description |
|----------|---------------|-------------|
| `sshd_permit_root_login` | `prohibit-password` | Root login setting |
| `sshd_log_level` | `VERBOSE` | SSH logging level |
| `sshd_x11_forwarding` | `yes` | X11 forwarding setting |
| `sshd_print_motd` | `no` | Print MOTD setting |
| `sshd_allowed_groups` | List of admin groups | Groups allowed SSH access |
| `sshd_admin_networks` | Network ranges | Admin access networks |


### Group and Network Configuration

```yaml
sshd_allowed_groups:
  - root

sshd_admin_networks:
  - 192.168.0.0/16
```

## Dependencies

None

## License

MIT

## Author

Jake Frulla