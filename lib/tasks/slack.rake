namespace :slack do

  desc "Fetch users from slack"
  task fetch_users: :environment do
    client = Slack::Web::Client.new

    users = client.users_list

    users.members.each do |user|
      User.create(name: user.real_name, uid: user.id) unless User.find_by(uid: user.id)
    end
  end

  desc "Start conversation"
  task start_conversation: :environment do
    client = Slack::Web::Client.new

    user = User.find_by(uid: 'U0L1X3Q4D')

    client.chat_postMessage(channel: user.uid, text: 'Hey mate, what did you do today?', as_user: true)
    user.update(is_speaking: true)
  end

  desc "Greet"
  task greet: :environment do
    client = Slack::Web::Client.new

    User.find_each do |user|
      message = "Привет, #{user.name}! :smiley: Приятно познакомиться! Меня зовут Timebot. " +
                'Моя цель - помочь Вам в таком важном и полезном (и довольно скучном) деле, как заполнение тайм-шита. ' +
                'Я очень полезный бот :sunglasses:, и скоро Вы в этом убедитесь! До встречи! :simple_smile: '
      client.chat_postMessage(channel: user.uid, text: message, as_user: true)
    end
  end

  desc "Dev task"
  task dev: :environment do
    %x(rake db:schema:load)
    %x(rake slack:fetch_users)
    %x(rake slack:start_conversation)
  end
end
