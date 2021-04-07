FROM gradle

MAINTAINER iamcsk "iamcsk90@gmail.com"

RUN apt-get update -y
RUN apt-get install -y python

RUN #!/usr/bin/env python

ADD install.sh install.sh
RUN chmod +x install.sh && sh install.sh && rm install.sh

CMD ["/bin/bash"]
