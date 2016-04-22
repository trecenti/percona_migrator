require 'percona_migrator/error'

module PerconaMigrator
  class CommandNotFoundError < Error
    def message
      'Please install pt-online-schema-change. Check: https://www.percona.com/doc/percona-toolkit for further details'
    end
  end
end
