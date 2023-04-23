FROM node:14

# This hack is widely applied to avoid python printing issues in docker containers.
# See: https://github.com/Docker-Hub-frolvlad/docker-alpine-python3/pull/13
ENV PYTHONUNBUFFERED=1

WORKDIR /usr/app
#COPY ./ /usr/app


RUN npm update && \
    npm install -g @angular/cli@1.6.2 && \
    npm install -g @angular-devkit/core@0.3.2 

RUN ng new my-project && \
    cd my-project && \
    npm install @angular-devkit/core@0.3.2



ENTRYPOINT ["sh", "-c", "cd /usr/app/my-project && ng serve --host=0.0.0.0"]
