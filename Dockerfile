FROM justinpusherlove/docker:v3.0.3

RUN pip install pygments
RUN pip install pymdown-extensions==8.2
RUN pip install cython>=0.28.5
RUN pip install twine
RUN pip install mkdocs==1.2.3
RUN pip install mkdocs-bootswatch==1.0
RUN pip install mkdocs-material==4.6.3
RUN pip install mkdocstrings==0.18.0
RUN pip install mkdocstrings-python-legacy==0.2.2
RUN pip install python-markdown-math==0.6
RUN pip install pycodestyle>=2.3.1
RUN pip install bibtexparser==1.2.0
RUN pip install google-api-python-client
RUN pip install google-auth-httplib2
RUN pip install google-auth-oauthlib
