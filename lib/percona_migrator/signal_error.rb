require 'percona_migrator/error'

module PerconaMigrator
  # Used when the spawned process failed by receiving a signal.
  # pt-online-schema-change returns "SIGSEGV (signal 11)" on failures.
  class SignalError < Error
    attr_reader :status

    # Constructor
    #
    # @param status [Process::Status]
    def initialize(status)
      super
      @status = status
    end

    def message
      status.to_s
    end
  end
end
