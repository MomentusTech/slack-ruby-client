# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module UsersAdmin
          #
          # Send an invitation to a new user by email
          #
          # @option options [Object] :email
          #   Email address of the new user
          # @option options [Object] :channels
          #   Comma-separated list of IDs (not names!) for channels, which the new user will auto-join. Both channel IDs for public channels and group IDs for private chanels work.
          # @option options [Object] :first_name
          #   Prefilled input for the "First name" field on the "new user registration" page.
          # @option options [Object] :last_name
          #   Prefilled input for the "Last name" field on the "new user registration" page.
          # @option options [Object] :resend
          #   Resend the invitation email if the user has already been invited and the email was sent some time ago.
          # @option options [Object] :restricted
          #   Invite a guest that can use multiple channels
          # @option options [Object] :ultra_restricted
          #   Invite a guest that can use one channel only
          # @see https://api.slack.com/methods/users.admin.invite
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users.admin/users.admin.invite.json
          def users_admin_invite(options = {})
            throw ArgumentError.new('Required arguments :email missing') if options[:email].nil?
            post('users.admin.invite', options)
          end

          #
          # Disable a user
          #
          # @option options [user] :user
          #   User to disable
          # @see https://api.slack.com/methods/users.admin.setInactive
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users.admin/users.admin.setInactive.json
          def users_admin_setInactive(options = {})
            throw ArgumentError.new('Required arguments :user missing') if options[:user].nil?
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('users.admin.setInactive', options)
          end
        end
      end
    end
  end
end
