FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8501
COPY . /app
ENTRYPOINT ["streamlit", "run"]
CMD ["Home.py", "--server.port", "7860"]