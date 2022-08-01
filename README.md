# planBar: Supplementary Material
This repository contains all the material to the paper "planBar – A Time Management Tool for Students at Swiss High Schools". The paper was submitted to University of Freiburg in August 2022("GymInf" Master Equivalent in Computer Science).

## planBar_Paper.pdf
Final version of the planBar paper.

## /Figures
All figures shown in the paper (high resolution)

## /planBar_Screenshots
Screenshots of the application showing the different states during the development of planBar.

## /planBar_Application
The application is only for test purpose, is not to be considered as an open-source software, and must not be deployed in any way.
### planBar_PBAS.jar
Runs as a localhost service on port 9001 and needs the following mySQL database:<br>
DB name: planBarDB<br>
DB user: planBarUser<br>
DB password: 1234567890
### planBar_SASS.jar
Runs as a localhost service on port 9002 and needs the following mySQL database:<br>
DB name: planBarDB<br>
DB user: planBarUser<br>
DB password: 1234567890

### planBar_SASS.sql
SQL script to fill some test data into planBar_SASS. The application can then be tested with the user <i>student&#64;planbar.ch</i> (password: student).

### planBar_Frontend
Built ReactJS-Application connecting to localhost on ports 9001 (PBAS) and 9002 (SASS).
