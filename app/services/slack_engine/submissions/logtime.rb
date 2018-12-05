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
        if time_entry.errors.any?
          { json: { errors: errors(time_entry) } }
        else
          @client.chat_postMessage(channel: params[:user][:id], text: success_message(time_entry), as_user: true) && { json: {} }
        end
      end

      private

      attr_reader :params, :user

      def time_params
        date = params.dig(:submission, :date).to_date
        week_number = params.dig(:submission, :week).to_i
        params[:submission][:user_id] = User.find_by(uid: params[:user][:id])&.id
        params[:submission][:project_id] = params[:submission][:project]
        time_params = params[:submission].slice(:time, :details, :user_id, :project_id)
        time_params[:date] = date - week_number.week
        time_params
      end

      def errors(time_entry)
        time_entry.errors.messages.map { |name, message| { name: name.to_s, error: message.first } }
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
