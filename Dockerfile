FROM opensearchproject/opensearch-dashboards:2.3.0

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER root

RUN yum install nc -y 

USER opensearch-dashboards

RUN bin/opensearch-dashboards-plugin remove indexManagementDashboards && \
    bin/opensearch-dashboards-plugin remove queryWorkbenchDashboards && \
    bin/opensearch-dashboards-plugin remove anomalyDetectionDashboards
