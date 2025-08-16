FROM maven:3.9.11-eclipse-temurin-21

# Instala Node.js (versão LTS estável)
RUN apt-get update && apt-get install -y curl \
  && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
  && apt-get install -y nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Verifica versões
RUN mvn -v && node -v && npm -v

WORKDIR /app
