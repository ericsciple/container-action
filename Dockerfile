# Container image that runs your code
FROM alpine:3.10

COPY problem-matcher.json /problem-matcher.json

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["sh", "-c", "printenv | sort ; cp /problem-matcher.json /github/workspace/problem-matcher.json ; echo '::add-matcher::problem-matcher.json' ; echo 'PROBLEM: some problem FILE: problem-matcher.json LINE: 2 COLUMN: 3'"]
