def ant = new AntBuilder()

ant.mkdir(dir:"bin")
ant.javac(
  srcdir:"src", destdir:"bin",
  includes:"**/*.java",
  target:1.6,
  fork:"true") {
  classpath {
    fileset dir: "../ropenphacts/inst/java", {
      include name: "*.jar"
    }
    fileset dir: "../ropenphactslibs/inst/java", {
      include name: "*.jar"
    }
  }
}

ant.jar(
  destfile:"../ropenphacts/inst/java/ropenphacts.jar",
  basedir:"bin",
  includes:"**/*.class"
)
