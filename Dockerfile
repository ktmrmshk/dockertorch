FROM ubuntu
RUN apt-get update && apt-get install -y \
    python-is-python3 \
    python3-pip \
    openjdk-17-jre-headless \
    curl \
    htop \
    libsndfile-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH="/root/.cargo/bin:$PATH"

RUN pip install -U pip &&\
  pip install --upgrade --no-cache-dir numpy pandas jupyterlab delta-spark delta-sharing PyArrow matplotlib librosa ipywidgets widgetsnbextension pandas-profiling transformers datasets scikit-learn lightgbm langchain
  
RUN pip install -U pip &&\
  pip install --upgrade --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

CMD jupyter-lab --allow-root --ip="0.0.0.0" --NotebookApp.token=''

