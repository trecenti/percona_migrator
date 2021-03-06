module PerconaMigrator
  module LoggerFactory

    # Returns the appropriate logger instance for the given configuration. Use
    # :verbose option to log to the stdout
    #
    # @param verbose [Boolean]
    # @return [#say, #write]
    def self.build(verbose: true)
      if verbose
        PerconaMigrator::Logger.new
      else
        PerconaMigrator::NullLogger.new
      end
    end
  end
end
