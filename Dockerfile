FROM opensearchproject/opensearch-dashboards:2.11.1

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

USER root

RUN yum install nc -y 

USER opensearch-dashboards

RUN bin/opensearch-dashboards-plugin remove indexManagementDashboards && \
    bin/opensearch-dashboards-plugin remove queryWorkbenchDashboards && \
    bin/opensearch-dashboards-plugin remove anomalyDetectionDashboards && \
    bin/opensearch-dashboards-plugin remove observabilityDashboards && \
    bin/opensearch-dashboards-plugin remove alertingDashboards && \
    bin/opensearch-dashboards-plugin remove notificationsDashboards
