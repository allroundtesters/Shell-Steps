

def append_separators(content,prefix='"',suffix='",'):
    lines = content.split(" ")
    for line in lines:
       if len(line.strip())>0: 
          print(prefix+line.strip()+suffix)

if __name__ == '__main__':
    content="""
<dependency>
      <groupId>com.espertech</groupId>
      <artifactId>esper</artifactId>
      <version>${esper.version}</version>
    </dependency>

    <dependency>
      <groupId>com.espertech</groupId>
      <artifactId>esperio-db</artifactId>
      <version>${esper.version}</version>
    </dependency>

    <dependency>
      <groupId>com.espertech</groupId>
      <artifactId>esperio-csv</artifactId>
      <version>${esper.version}</version>
    </dependency>

    <dependency>
      <groupId>com.espertech</groupId>
      <artifactId>esperio-kafka</artifactId>
      <version>${esper.version}</version>
    </dependency>

    <dependency>
      <groupId>com.espertech</groupId>
      <artifactId>esper-avro</artifactId>
      <version>${esper.version}</version>
    </dependency>
    """
    append_separators(content)
    