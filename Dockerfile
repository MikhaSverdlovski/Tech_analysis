# Используйте официальный образ Python
FROM python:3.8-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    libc-dev \
    libffi-dev \
    && rm -rf /var/lib/apt/lists/*

# Копируем зависимости (requirements.txt) в контейнер
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем остальные файлы в контейнер
COPY . .


# Запускаем приложение
CMD ["python", "main.py"]



#docker build -t myapp .
#docker run myapp