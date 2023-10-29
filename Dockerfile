FROM python:bookworm
MAINTAINER "Nikolas Garofil"

RUN useradd -ms /bin/bash user
USER user
RUN mkdir -p /home/user/.local/bin
ENV PATH=/home/user/.local/bin:$PATH
WORKDIR /home/user/.local/bin

COPY --chown=user:user requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY demo.py .
CMD [ "python", "./demo.py" ]
