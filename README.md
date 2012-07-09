# Chef Journalist

Chef Journalist is an OpsCode Chef report/exception handler for
outputting a list of updated resources. The resource list can be
filtered by resource type (template, cookbook_file, etc), all types
are outputted by default.

## Installation

    gem install chef-journalist

## Usage

Append the following to your Chef client configs, usually at
`/etc/chef/client.rb`

    require "chef-journalist"

    report_handlers << Journalist.new
    exception_handlers << Journalist.new

Alternatively, you can use the LWRP (available @
http://community.opscode.com/cookbooks/chef_handler)

You can provide an array of resource types to be included in the
report, default is all.

    report_handlers << Journalist.new(%w[template cookbook_file])

## Example Output

    Running report handlers
    Writing the updated resource report ...
      template[/etc/motd]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
