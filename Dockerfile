# Use a lean base image with Python
FROM python:3.12-slim-bookworm

# Install the necessary Python packages: uv, mcpo, and the specific MCP server
RUN pip install uv mcpo mcp-youtube-transcript

# Set the working directory
WORKDIR /app

# Expose the port that MCPO will use
EXPOSE 8000

# The command to run when the container starts. Use the format from the logs.
CMD ["uvx", "mcpo", "--host", "0.0.0.0", "--port", "8000", "--", "uvx", "mcp-youtube-transcript"]
