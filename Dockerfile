FROM ubuntu
RUN apt-get update && apt-get install -y \
    python-is-python3 \
    python3-pip \
    openjdk-17-jre-headless \
    curl \
    htop \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
 
RUN pip install -U pip &&\
  pip install --upgrade --no-cache-dir numpy pandas jupyterlab delta-spark delta-sharing PyArrow 
  
RUN pip install -U pip &&\
  pip install --upgrade --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
