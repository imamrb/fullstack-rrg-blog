# frozen_string_literal: true

require 'English'

namespace :code do
  desc 'runs the linters included in the test suite'
  task :linters do
    commands = [
      'bundle exec brakeman --no-pager --format json',
      'bundle exec rubocop --extra-details --display-style-guide --display-cop-names --parallel',
      'bundle exec rails_best_practices .',
      'bundle exec bundle-audit'
    ]

    now = Time.current
    t1 = now.to_f
    puts "Starting linter inspection at #{now}."
    commands.each do |cmd|
      puts "Running '#{cmd}' .."
      system(cmd)

      if $CHILD_STATUS != 0
        puts 'Linter failed, aborting.'
        exit 1
      end
    end
    puts "Success! Linters took #{Time.current.to_f - t1} seconds."
  end
end
