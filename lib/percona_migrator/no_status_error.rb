require 'percona_migrator/error'

module PerconaMigrator
  # Used when for whatever reason we couldn't get the spawned process'
  # status.
  class NoStatusError < Error
    def message
      'Status could not be retrieved'.freeze
    end
  end
end
