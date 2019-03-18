# frozen_string_literal: true

require 'hako/scripts'

module Hako
  class Script
    # @param [Application] app
    # @param [Hash] options
    # @param [Boolean] dry_run
    def initialize(app, options, dry_run:)
      @app = app
      @dry_run = dry_run
      configure(options)
    end

    # @param [Hash<String, Container>] _containers
    def deploy_starting(_containers); end

    # @param [Hash<String, Container>] _containers
    # @param [Fixnum] _front_port
    def deploy_started(_containers, _front_port); end

    # @param [Hash<String, Container>] _containers
    def deploy_finished(_containers); end

    # @param [Hash<String, Container>] _containers
    # @param [Hash] _options
    def deploy_failed(_containers, _options); end

    def rollback_starting; end

    # @param [String] _current_image_tag
    # @param [String] _target_image_tag
    def rollback_started(_current_image_tag, _target_image_tag); end

    def rollback_finished; end

    # @param [Hash<String, Container>] _containers
    def oneshot_starting(_containers); end

    # @param [Scheduler] _scheduler
    def oneshot_started(_scheduler); end

    # @param [Hash<String, Container>] _containers
    def oneshot_finished(_containers); end

    def after_remove; end

    private

    # @param [Hash] _options
    def configure(_options); end
  end
end
