# ZIO-Quill Zymposium Examples

Simple example of using ZIO-Quill with some helpful scripts to automatically setup a postgres database.

## Instructions
1. Download and install docker.
2. Run the start script: `./start.sh`
3. Compile and run the examples: `sbt 'runMain quixotic.Main'`
   ```
   > sbt 'runMain quixotic.Main'
   List((Person(2,Vlad,Dracul,321),Address(2,Bran Castle,11111,Transylvania)), (Person(2,Vlad,Dracul,321),Address(2,Ambras Castle,11111,Innsbruck)))
   ```
4. Stop the container `./stop.sh`
