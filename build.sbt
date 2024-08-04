ThisBuild / scalaVersion     := "2.13.14"
ThisBuild / version          := "0.1.0-SNAPSHOT"
ThisBuild / organization     := "com.example"
ThisBuild / organizationName := "example"

lazy val root = (project in file("."))
  .settings(
    name := "quill-2",
    libraryDependencies ++= Seq(
      "io.getquill"          %% "quill-jdbc-zio" % "3.12.0",
      "org.postgresql"        % "postgresql"     % "42.3.1",
      "dev.zio"              %% "zio"            % "1.0.12",
      "dev.zio"              %% "zio-macros"     % "1.0.12",
      "io.github.kitlangton" %% "zio-magic"      % "0.3.11",
      "dev.zio"              %% "zio-test"       % "1.0.12" % Test
    ),
    scalacOptions ++= Seq("-Ymacro-annotations"),
    testFrameworks += new TestFramework("zio.test.sbt.ZTestFramework")
  )
