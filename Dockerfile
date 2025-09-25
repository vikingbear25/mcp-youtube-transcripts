FROM python:3.12-slim-bookworm
RUN pip install uv mcpo mcp-youtube-transcript
WORKDIR /app
EXPOSE 8000
CMD ["uvx", "mcpo", "--port", "8000", "--server-type", "mcp-youtube-transcript"]
