require 'logger'

module Plants
  # Simple split logger
  class Log
    def initialize
      @stdout = Logger.new(STDOUT)
      @stderr = Logger.new(STDERR)
    end

    # @param progname [String]
    # @param block [Proc]
    # @return [void]
    def debug(progname = nil, &block)
      @stdout.debug(progname, &block)
    end

    # @param progname [String]
    # @param block [Proc]
    # @return [void]
    def info(progname = nil, &block)
      @stdout.info(progname, &block)
    end

    # @param progname [String]
    # @param block [Proc]
    # @return [void]
    def warn(progname = nil, &block)
      @stderr.warn(progname, &block)
    end

    # @param progname [String]
    # @param block [Proc]
    # @return [void]
    def error(progname = nil, &block)
      @stderr.error(progname, &block)
    end

    # @param progname [String]
    # @param block [Proc]
    # @return [void]
    def fatal(progname = nil, &block)
      @stderr.fatal(progname, &block)
    end

    class << self
      # @return [Plants::Log]
      def instance
        @_instance ||= new
      end
    end
  end
end