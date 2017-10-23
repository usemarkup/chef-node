# Chef Node
[![Build Status](https://travis-ci.org/usemarkup/chef-node.svg?branch=master)](https://travis-ci.org/usemarkup/chef-node)

Installs node from https://github.com/nodesource/distributions for CentOS / Debian

## Usage

Changing the versions of node can be done via the attributes, see attributes.rb

```ruby
default['node']['version'] = '8.4.0-1'
default['node']['major_version'] = '8.x'

# If you wish to install an exact version of Yarn
default['yarn']['version'] = '0.27.5-1'
```

Installing node, upgrading NPM and installing yarn can be done with the following

```json
  "run_list": [
    "recipe[nodesource]",
    "recipe[nodesource::upgrade_npm]",
    "recipe[nodesource::yarn]"
  ]
```

## Support

- CentOS 6.x
- CentOS 7.x
- Debian

### Chef Support (tested)

- Chef 12.7+
- Chef 13.1
