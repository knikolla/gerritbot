FROM python:2-onbuild

RUN pip install .

CMD ["/bin/sh", "-c", "contrib/run.sh"]
