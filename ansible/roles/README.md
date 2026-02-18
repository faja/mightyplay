# roles
## post-install roles
## base roles
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
