require 'rubygems'
require 'chef/handler'

class Journalist < Chef::Handler
  def initialize(resource_types=[])
    @resource_types = resource_types.map {|t| t.to_sym }
  end

  def report
    Chef::Log.info "Writing the updated resource report ..."
    updated_resources = case
    when @resource_types.empty?
      run_status.updated_resources
    else
      run_status.updated_resources.select {|r| @resource_types.include? r.resource_name }
    end
    updated_resources.each {|r| Chef::Log.info "  #{r}" }
  end
end
