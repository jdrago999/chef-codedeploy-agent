
name             'codedeploy-agent'
maintainer       'John Drago'
maintainer_email 'john@sano.co'
license          'all_rights'
description      'Installs/Configures codedeploy-agent'
long_description 'Installs/Configures codedeploy-agent'
version          '0.1.0'

depends 'apt'
recipe  'codedeploy-agent::default', 'Fetches, installs, and starts the AWS CodeDeplot host agent'
