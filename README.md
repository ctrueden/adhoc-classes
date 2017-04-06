Demonstrates ad hoc class generation as a multi-module project.

## Usage

```
$ mvn clean install && cd main-project && mvn -Pexec | grep Hello
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO]
[INFO] stuff-parent
[INFO] adhoc-dependency
[INFO] main-project
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building stuff-parent 0.1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-clean-plugin:3.0.0:clean (default-clean) @ stuff-parent ---
[INFO]
[INFO] --- maven-enforcer-plugin:1.4.1:enforce (enforce-rules) @ stuff-parent ---
[INFO] Skipping Rule Enforcement.
[INFO]
[INFO] --- build-helper-maven-plugin:1.12:regex-property (sanitize-version) @ stuff-parent ---
[INFO]
[INFO] --- buildnumber-maven-plugin:1.4:create (default) @ stuff-parent ---
[INFO] Executing: /bin/sh -c cd '/Users/curtis/t' && 'git' 'rev-parse' '--verify' 'HEAD'
[INFO] Working directory: /Users/curtis/t
[INFO] Storing buildNumber: UNKNOWN at timestamp: 1491501546615
[WARNING] Cannot get the branch information from the git repository:
Detecting the current branch failed: fatal: Not a git repository (or any of the parent directories): .git

[INFO] Executing: /bin/sh -c cd '/Users/curtis/t' && 'git' 'rev-parse' '--verify' 'HEAD'
[INFO] Working directory: /Users/curtis/t
[INFO] Storing buildScmBranch: UNKNOWN_BRANCH
[INFO]
[INFO] --- scijava-maven-plugin:1.0.0:set-rootdir (set-rootdir) @ stuff-parent ---
[INFO] Setting rootdir: /Users/curtis/t
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building adhoc-dependency 0.1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-clean-plugin:3.0.0:clean (default-clean) @ adhoc-dependency ---
[INFO]
[INFO] --- maven-enforcer-plugin:1.4.1:enforce (enforce-rules) @ adhoc-dependency ---
[INFO] Skipping Rule Enforcement.
[INFO]
[INFO] --- build-helper-maven-plugin:1.12:regex-property (sanitize-version) @ adhoc-dependency ---
[INFO]
[INFO] --- buildnumber-maven-plugin:1.4:create (default) @ adhoc-dependency ---
[INFO]
[INFO] --- scijava-maven-plugin:1.0.0:set-rootdir (set-rootdir) @ adhoc-dependency ---
[INFO]
[INFO] --- maven-resources-plugin:3.0.2:resources (default-resources) @ adhoc-dependency ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] skip non existing resourceDirectory /Users/curtis/t/adhoc-dependency/src/main/resources
[INFO]
[INFO] --- maven-compiler-plugin:3.6.0:compile (default-compile) @ adhoc-dependency ---
[INFO] No sources to compile
[INFO]
[INFO] --- exec-maven-plugin:1.5.0:exec (class-generator) @ adhoc-dependency ---
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building main-project 0.1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-clean-plugin:3.0.0:clean (default-clean) @ main-project ---
[INFO]
[INFO] --- maven-enforcer-plugin:1.4.1:enforce (enforce-rules) @ main-project ---
[INFO] Skipping Rule Enforcement.
[INFO]
[INFO] --- build-helper-maven-plugin:1.12:regex-property (sanitize-version) @ main-project ---
[INFO]
[INFO] --- buildnumber-maven-plugin:1.4:create (default) @ main-project ---
[INFO]
[INFO] --- scijava-maven-plugin:1.0.0:set-rootdir (set-rootdir) @ main-project ---
[INFO]
[INFO] --- maven-resources-plugin:3.0.2:resources (default-resources) @ main-project ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] skip non existing resourceDirectory /Users/curtis/t/main-project/src/main/resources
[INFO]
[INFO] --- maven-compiler-plugin:3.6.0:compile (default-compile) @ main-project ---
[INFO] Compiling 1 source file to /Users/curtis/t/main-project/target/classes
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] stuff-parent ....................................... SUCCESS [  0.791 s]
[INFO] adhoc-dependency ................................... SUCCESS [  0.836 s]
[INFO] main-project ....................................... SUCCESS [  0.310 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 2.332 s
[INFO] Finished at: 2017-04-06T12:59:07-05:00
[INFO] Final Memory: 24M/314M
[INFO] ------------------------------------------------------------------------
Hello world!
```
