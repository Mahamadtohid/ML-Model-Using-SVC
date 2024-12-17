
FROM python:3.11 

WORKDIR /Medical_Predict

COPY requirements.txt /Medical_Predict/

RUN pip install -r requirements.txt 

COPY . .
# Expose the port that the app will run on
EXPOSE 8082

# Command to run the application with gunicorn
CMD ["python", "main.py", "--host=0.0.0.0", "--port=8082"]




