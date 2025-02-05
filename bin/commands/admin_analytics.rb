# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'AdminAnalytics methods.'
      command 'admin_analytics' do |g|
        g.desc 'Retrieve analytics data for a given date, presented as a compressed JSON file'
        g.long_desc %( Retrieve analytics data for a given date, presented as a compressed JSON file )
        g.command 'getFile' do |c|
          c.flag 'type', desc: 'The type of analytics to retrieve. The options are currently limited to member (for grid member analytics) and public_channel (for public channel analytics).'
          c.flag 'date', desc: 'Date to retrieve the analytics data for, expressed as YYYY-MM-DD in UTC.'
          c.flag 'metadata_only', desc: 'Retrieve metadata for the type of analytics indicated. Can be used only with type set to public_channel analytics. See detail below. Omit the date parameter when using this argument.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.admin_analytics_getFile(options))
          end
        end
      end
    end
  end
end
