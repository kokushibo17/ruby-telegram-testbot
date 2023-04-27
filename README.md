# Ruby Telegram Test Bot

This is a simple Ruby Telegram bot that you can use to test the Telegram Bot API.

## Getting Started

To get started with the bot, you will need to create a new Telegram bot and obtain a bot token. You can follow the instructions in the Telegram Bot API documentation to create a new bot and obtain its token.

Once you have obtained a bot token, you can set the `TELEGRAM_BOT_TOKEN` environment variable to the token value in order to authenticate with the Telegram API. You can do this by exporting the variable in your shell or by setting it in a `.env` file.

To run the bot locally, you can use the following command:


bundle exec ruby bot.rb

This will start the bot and listen for incoming messages.

## Deployment

You can also deploy the bot to a container platform like Heroku using Docker. A `Dockerfile` is included in the repository that you can use to build a Docker image of the bot.

To deploy the bot to Heroku, you can follow these steps:

1. Create a new Heroku app and connect it to your GitHub repository.

2. Set the `TELEGRAM_BOT_TOKEN` environment variable in the Heroku app settings to the bot token value.

3. Use the `heroku container:push` and `heroku container:release` commands to deploy the bot using the Docker image you built.

## For hosting locally 

Here's an example of how you can host your Ruby Telegram test bot locally:

1. Clone your repository: Use Git to clone your Ruby Telegram test bot repository to your local machine.

2. Install dependencies: Install the required Ruby dependencies by running the following command in the root directory of your cloned repository:

```

bundle install

```

3. Set the bot token environment variable: Set the `TELEGRAM_BOT_TOKEN` environment variable to the token value of your Telegram bot. You can do this by exporting the variable in your shell or by setting it in a `.env` file located in the root directory of your cloned repository.

```

export TELEGRAM_BOT_TOKEN=<bot-token>

```

or

```

echo "TELEGRAM_BOT_TOKEN=<bot-token>" > .env

```

Replace `<bot-token>` with the token value of your Telegram bot.

4. Run the bot: Start the bot by running the following command in the root directory of your cloned repository:

```

bundle exec ruby bot.rb

```

This will start the bot and listen for incoming messages.

5. Test the bot: Open a new chat with your Telegram bot and send it a message. The bot should respond with a greeting message.

That's it! Your Ruby Telegram test bot should now be running locally on your machine.

Note that you may need to adjust the `BASE_URL` constant in `lib/telegram_client.rb` to use the correct URL for your local development environment.

I hope this helps you host your Ruby Telegram test bot locally!

## Contributing

If you find any issues with the bot or would like to contribute to its development, please feel free to submit a pull request or open an issue.

## License

This bot is released under the MIT License. See the `LICENSE` file for more information.
