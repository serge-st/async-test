FROM node:21-alpine

RUN wget -qO /bin/pnpm "https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linuxstatic-arm64" && chmod +x /bin/pnpm

WORKDIR /app
COPY . .

RUN pnpm install --frozen-lockfile && pnpm build
CMD ["pnpm", "start:from:docker"]