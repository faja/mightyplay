cadvisor
=========

### supported platforms
- Debian
  - bookworm

### prometheus metric_relabel_configs
```yaml
# sets `container` and `stack` labels
# drops `name` and `container_label_stack`
metric_relabel_configs:
  - action: replace
    source_labels: [name]
    target_label: container
  - action: replace
    source_labels: [container_label_stack]
    target_label: stack
  - action: labeldrop
    regex: ^(name|container_label_stack)$
```
