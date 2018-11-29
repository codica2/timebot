# frozen_string_literal: true

module SlackEngine
  module Submissions
    class Logtime
      def initialize(params)
        @params = params.with_indifferent_access
        @client = Slack::Web::Client.new
      end

      def perform
        time_entry = TimeEntry.create(time_params)

        @client.chat_postMessage(channel: params[:user][:id], text: message(time_entry), as_user: true)
      end

      private

      attr_reader :params, :user

      def time_params
        params[:submission][:user_id] = User.find_by(uid: params[:user][:id])&.id
        params[:submission].slice(:date, :time, :details, :user_id, :project_id)
      end

      def message(time_entry)
        time_entry.errors.any? ? error_message(time_entry) : success_message(time_entry)
      end

      def success_message(time_entry)
        date         = time_entry.date.strftime('%b %-d, %Y')
        project_name = time_entry.project.name
        time         = time_entry.time

        message = "*Set timesheet for:* #{date} for *#{project_name}:* #{time}."
        message += "\n*Details:* #{time_entry.details || 'none'}." if time_entry.details
        message
      end

      def error_message(time_entry)
        time_entry.errors.full_messages.map { |message| "*#{message}*" }.join("\n")
      end
    end
  end
end
