# roles

## base roles
- hostname
- nftables
- packages_base
- packages_cache_update
- packages_tools
- time

## roles

# meta__ vars

Roles are using some `meta__` variables, that is some generic cross roles variables
that drive behaviours like platform check etc.

If you wanna set that, set it at the playbook level:
```yaml
- name: my playbook
  hosts: all
  vars:
    # below is the list of all meta__ variables
    meta__run_platform_check: false        # run platform checks, default true
    meta__run_package_cache_update: false  # run package cache updates, default true

```

## package cache update
tldr; do not include package cache update task in roles

- most roles that install packages would require cache update,
- I don't wanna include cache update task in almost every single role, hence
- only `packages_base` and `packages_tools` have cache update tasks included
- also there is a dedicated `packages_cache_update` role if needed, can be
  included in the beginning of the playbook
