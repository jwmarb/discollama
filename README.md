# discollama

`discollama` is a Discord bot powered by a local large language model backed by [Ollama](https://github.com/jmorganca/ollama).

## Dependencies

- Docker and Docker Compose

## Setting up environment variables

Copy `.env.sample` as a file named `.env`. Change your variables accordingly.

| Variable | Description |
| -------- | ----------- |

| **DISCORD_TOKEN** | The bot's discord token which can be found under the Bot category in discord developers |

| **REDIS_PORT** | The port of the redis server |
| **OLLAMA_MODEL** | The ollama model to use (e.g. phi3.5, llama3.1, gemma2:27b) |
| **OLLAMA_HOST** | The host of the ollama server. By default, it is `127.0.0.1` |

## Run `discollama.py`

```
docker compose up
```

> The port `11435` must not be used by the host. If you want to use another port, change it in `.env`.

> Note: You must setup a [Discord Bot](https://discord.com/developers/applications) and set environment variable `DISCORD_TOKEN` before `discollama.py` can access Discord.

`discollama.py` requires an [Ollama](https://github.com/jmorganca/ollama) server. Follow the steps in [jmorganca/ollama](https://github.com/jmorganca/ollama) repository to setup Ollama.

By default, it uses `127.0.0.1:11435` which can be overwritten with `OLLAMA_HOST`.

> Note: Deploying this on Linux requires updating network configurations and `OLLAMA_HOST`.

## Customize `discollama.py`

The default LLM is `phi3.5`. To change the model, you can edit it in `.env`

To use a custom model with a custom system prompt:

```
ollama create mymodel -f Modelfile
```

This can be changed in `.env`:

```
OLLAMA_MODEL=mymodel
```

See [jmorganca/ollama](https://github.com/jmorganca/ollama/blob/main/docs/modelfile.md) for more details.

## Activating the Bot

Discord users can interact with the bot by mentioning it in a message to start a new conversation or in a reply to a previous response to continue an ongoing conversation.
