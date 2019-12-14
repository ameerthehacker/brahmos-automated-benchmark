FROM centos:7
RUN echo "unsafe-perm = true" > /root/.npmrc
RUN echo "{ \"allow_root\": true }" >  /root/.bowerrc

# Install node
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs

# Install chrome
RUN curl -sL https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm > /root/chrome.rpm
RUN yum localinstall -y /root/chrome.rpm

RUN yum install -y git

# Clone the benchmarking repo into /benchmarking-tool
RUN git clone https://github.com/ameerthehacker/js-framework-benchmark.git /benchmarking-tool

# Install netlify cli
RUN npm install netlify-cli -g
# Install yarn
RUN npm install yarn -g

# Copy the required scripts
COPY ./scripts/build.sh /benchmarking-util/build.sh

# Build benching-tool
RUN sh /benchmarking-util/build.sh

# Copy all other scripts
COPY ./scripts/* /benchmarking-util/

ENTRYPOINT [ "sh", "/benchmarking-util/bench.sh", "10" ]
