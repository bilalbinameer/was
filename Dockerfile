From websphere-liberty:kernel-java11-openj9
RUN featureUtility installFeature --acceptLicense jaxrs-2.1 jsonp-1.1 cdi-2.0 mpMetrics-3.0 mpConfig-2.0
