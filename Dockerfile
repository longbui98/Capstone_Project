FROM python:3.7

## Step 1:
# Create a working directory
WORKDIR /app
## Step 2:
# Copy source code to working directory
COPY app.py /app/
## Step 3:
# hadolint ignore=DL3013
RUN pip install --upgrade --no-cache-dir pip &&\ 
    pip install --trusted-host pypi.python.org
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
