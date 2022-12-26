import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lsbissue, LsbissueWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "tq0ah54+v5mIfeZdCkQjnScmVoS8oAE5Acl0MGU2fdx7E1AtxbLHAH5jdkG+6YDW",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
