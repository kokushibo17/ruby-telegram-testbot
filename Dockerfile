FROM heroku/heroku:18

# Set the working directory

WORKDIR /app

# Install system dependencies

RUN apt-get update && \

    apt-get install -y build-essential libpq-dev nodejs

# Install Ruby dependencies

COPY Gemfile Gemfile.lock ./

RUN bundle install --without development test

# Copy the application code

COPY . .

# Set up the environment variables

ENV TELEGRAM_BOT_TOKEN=<your-telegram-bot-token>

# Start the bot

CMD ["bundle", "exec", "ruby", "bot.rb"]
