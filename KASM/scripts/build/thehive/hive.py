#!/usr/bin/env python3 -tt

def main():
    content = '###\n## Documentation is available at https://docs.thehive-project.org/thehive/\n###\n\n## Include Play secret key\n# More information on secret key at https://www.playframework.com/documentation/2.8.x/ApplicationSecret\ninclude "/etc/thehive/secret.conf"\n\n## Database configuration\ndb.janusgraph {\n  storage {\n    ## Cassandra configuration\n    # More information at https://docs.janusgraph.org/basics/configuration-reference/#storagecql\n    backend: cql\n    hostname: [ "127.0.0.1" ]\n    # Cassandra authentication (if configured)\n    // username: "thehive"\n    // password: "password"\n    cql {\n      cluster-name: thp\n      keyspace: thehive\n      read-consistency-level: ONE\n      write-consistency-level: ONE\n    }\n  }  index.search {\n    backend: lucene\n    directory: /opt/thp/thehive/index\n    # If TheHive is in cluster ElasticSearch must be used:\n    // backend: elasticsearch\n    // hostname: ["ip1", "ip2"]\n    // index-name: thehive\n  }\n\n  ## For test only !\n  # Comment the two lines below before enable Cassandra database\n  storage.backend: berkeleyje\n  storage.directory: /opt/thp/thehive/database\n  // berkeleyje.freeDisk: 200 # disk usage threshold\n}\n\n## Attachment storage configuration\nstorage {\n  provider = localfs\n  localfs.location = /opt/thp_data/files/thehive\n\n  ## Hadoop filesystem (HDFS)\n  // provider: hdfs\n  // hdfs {\n  //   root: "hdfs://localhost:10000" # namenode server hostname\n  //   location: "/thehive"           # location inside HDFS\n  //   username: thehive              # file owner\n  // }\n}\n\n## Authentication configuration\n# More information at https://github.com/TheHive-Project/TheHiveDocs/TheHive4/Administration/Authentication.md\n//auth {\n//  providers: [\n//    {name: session}               # required !\n//    {name: basic, realm: thehive}\n//    {name: local}\n//    {name: key}\n//  ]\n# The format of logins must be valid email address format. If the provided login doesn\'t contain `@` the following\n# domain is automatically appended\n//  defaultUserDomain: "thehive.local"\n//}\n\n## CORTEX configuration\n# More information at https://github.com/TheHive-Project/TheHiveDocs/TheHive4/Administration/Connectors.md\n# Enable Cortex connector\n// play.modules.enabled += org.thp.thehive.connector.cortex.CortexModule\n// cortex {\n//  servers: [\n//    {\n//      name: "local"                # Cortex name\n//      url: "http://localhost:9001" # URL of Cortex instance\n//      auth {\n//        type: "bearer"\n//        key: "***"                 # Cortex API key\n//      }\n//      wsConfig {}                  # HTTP client configuration (SSL and proxy)\n//    }\n//  ]\n// }\n\n## MISP configuration\n# More information at https://github.com/TheHive-Project/TheHiveDocs/TheHive4/Administration/Connectors.md\n# Enable MISP connector\n// play.modules.enabled += org.thp.thehive.connector.misp.MispModule\n// misp {\n//  interval: 1 hour\n//  servers: [\n//    {\n//      name = "local"            # MISP name\n//      url = "http://localhost/" # URL or MISP\n//      auth {\n//        type = key\n//        key = "***"             # MISP API key\n//      }\n//      wsConfig {}               # HTTP client configuration (SSL and proxy)\n//    }\n//  ]\n//}\n\n# Define maximum size of attachments (default 10MB)\n//play.http.parser.maxDiskBuffer: 1GB\n'
    with open("/etc/thehive/application.conf", "w") as hiveconf:
        hiveconf.write(content)

if __name__ == "__main__":
    main()