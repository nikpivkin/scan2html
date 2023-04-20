FROM aquasec/trivy:0.40.0

RUN trivy plugin install github.com/afdesk/scan2html

ENTRYPOINT ["trivy", "scan2html"]