FROM justb4/jmeter:latest
# with custom plugins

# https://jmeter-plugins.org/wiki/TestPlanCheckTool/
ENV SHAPING_TIMER_PLUGIN_VERSION=2.5
RUN wget https://jmeter-plugins.org/files/packages/jpgc-tst-${SHAPING_TIMER_PLUGIN_VERSION}.zip
RUN unzip -o jpgc-tst-${SHAPING_TIMER_PLUGIN_VERSION}.zip -d ${JMETER_HOME}

# https://jmeter-plugins.org/wiki/UltimateThreadGroup/
ENV CUSTOM_PLUGIN_VERSION=2.10
RUN wget https://jmeter-plugins.org/files/packages/jpgc-casutg-${CUSTOM_PLUGIN_VERSION}.zip
RUN unzip -o jpgc-casutg-${CUSTOM_PLUGIN_VERSION}.zip -d ${JMETER_HOME}

# https://jmeter-plugins.org/files/packages/jpgc-functions-2.2.zip
ENV CUSTOM_FUNCTIONS=2.2
RUN wget https://jmeter-plugins.org/files/packages/jpgc-functions-${CUSTOM_FUNCTIONS}.zip
RUN unzip -o jpgc-functions-${CUSTOM_FUNCTIONS}.zip -d ${JMETER_HOME}

#https://jmeter-plugins.org/files/packages/jpgc-graphs-basic-2.0.zip
ENV CUSTOM_GRAPHS=2.0
RUN wget https://jmeter-plugins.org/files/packages/jpgc-graphs-basic-${CUSTOM_GRAPHS}.zip
RUN unzip -o jpgc-graphs-basic-${CUSTOM_GRAPHS}.zip -d ${JMETER_HOME}

EXPOSE 1099

ENTRYPOINT ["/entrypoint.sh"]