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

## Contributing

If you find any issues with the bot or would like to contribute to its development, please feel free to submit a pull request or open an issue.

## License

This bot is released under the MIT License. See the `LICENSE` file for more information.
