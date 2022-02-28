# TESTING FRAMEWORK

## Framework type - Behavior Drive Development
In the choosen framework, its possible that Developers, Testers, business analyst, etc. participate actively and create test cases in a simple text language, usually in English. It means that its an easy way to all project members can understand what is going to test. To achieve the above, a BDD framework tool as 'Cucumber' is used. This tool allows to approach into the 'Given-When-Then' structure, being defined first from a Feature and different possible Scenarios to test.

## Framework - Karate
Karate is an automation framework that allows to test an API. It allows to execute the test cases in parallel and perform the JSON & XML checks. It makes use of the Cucumber feature file and the Gherkin language to write the test. 

It gives testers the access to an HTML file where it is possible to view the status of all Gherkin steps.

## Build automation tool and test runner
Build automation tool used for the project is Maven, an easy-to-implement tool in a Java. It is one way of setting up a Karate environment and writing the code. Test runner used for this framework its JUnit4. This runner is great for Java projects because gives testers the possibility to script and implement repeated regression test cases, and test small pieces of code. It is necessary to install Maven and JUnit dependencies in 'pom.xml' file in Maven project.

## Data management
for this project, the data used in test cases, is used manually. On each test case, the data (api key, session id,, etc), needed for API test is gotten from the prints made on each step or from the TMDB site. I'll be copied and pasted where it corresponds.
