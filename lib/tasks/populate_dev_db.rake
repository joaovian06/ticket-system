# frozen_string_literal: true

namespace :populate_dev_db do
  task run: :environment do
    puts 'Resetando banco...'
    `rails db:drop db:create db:migrate db:seed`
  end
end
