FROM python:3.9

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y vim

ADD ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

ADD ./notebooks/ /notebooks/

WORKDIR /notebooks/

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='*'", "--NotebookApp.token=''", "--NotebookApp.password=''", "--allow-root", "--no-browser"]
