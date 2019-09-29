# Example env vars for bot
# Copy this to `env.sh` and edit with your real vars -- it is ignored by git

export TELEGRAM_BOT_POSTGRES_URL="postgres://pkodsonv:R7XWlXArMZrM_ikTOZfoo5WIBaTOJQK7@packy.db.elephantsql.com:5432/pkodsonv"

read -r -d '' MESSAGE_BAN_PATTERNS << 'EOF'
# ETH
# e.g. F8C8405e85Cfe42551DEfeB2a4548A33bb3DF840
[0-9a-fA-F]{40,40}
# BTC
# e.g. 13qt9rCA2CQLZedmUuDiPkwdcAJLsuTvLm
|[0-9a-zA-Z]{34,34}
EOF

read -r -d '' MESSAGE_HIDE_PATTERNS << 'EOF'
# ETH
# e.g. F8C8405e85Cfe42551DEfeB2a4548A33bb3DF840
|[0-9a-fA-F]{40,40}
# BTC
# e.g. 13qt9rCA2CQLZedmUuDiPkwdcAJLsuTvLm
|[0-9a-zA-Z]{34,34}
EOF

export TELEGRAM_BOT_TOKEN="955549983:AAH3cLlR8f5BKhD-i0xODI51xHddONBbBbg"

export NAME_BAN_PATTERNS="admin$"

export CHAT_IDS="-1296501406"

# Needed to make these env vars visible to python
export MESSAGE_BAN_PATTERNS=$MESSAGE_BAN_PATTERNS
export MESSAGE_HIDE_PATTERNS=$MESSAGE_HIDE_PATTERNS
