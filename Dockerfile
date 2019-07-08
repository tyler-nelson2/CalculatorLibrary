FROM python:3

ADD calculator.py /
ADD test_calculator.py /

RUN pip install flake8 pytest pytest-cov

CMD ["flake8 --statistics"]
CMD ["pytest -v --cov"]
