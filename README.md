# planBar: Supplementary Material
This repository contains all the material to the paper "planBar – A Time Management Tool for Students at Swiss High Schools". The paper was submitted to University of Freiburg in August 2022 ("GymInf" Master Equivalent in Computer Science).

## planBar_Paper.pdf
Final version of the planBar paper.

## /Figures
All figures shown in the paper (high resolution)

## /planBar_Screenshots
Screenshots of the application showing the different states during the development of planBar.

## /planBar_Application
The application (v1, august 2022) is only for test purpose, is not to be considered as an open-source software, and must not be made public in any way.

### planBarDEMO_CREATE.sql
SQL script to create necessary databases. Run this file and then run the files <i>planBar_PBA.jar</i> and <i>planBar_SAS.jar</i> to create the databases' structures before running <i>planBar_Test_FILL.sql</i>!

### planBarDEMO_FILL.sql
SQL script to fill some test data into the databases (localhost). The application (Frontend with running PBA and SAS) can then be tested with the user <i>student&#64;planbar.ch</i> (password: student).

### planBarDEMO_PBA.jar
Runs as a localhost service on port 9001 and needs the following mySQL database on localhost:3306<br>
DB name: <i>planBarApp</i><br>
DB user: <i>planBarAppUser</i><br>
DB password: <i>1234567890</i>
### planBarDEMO_SAS.jar
Runs as a localhost service on port 9002 and needs the following mySQL database on localhost:3306<br>
DB name: <i>planBarSAS</i><br>
DB user: <i>planBarSASUser</i><br>
DB password: <i>1234567890</i>

### planBar_Frontend
Built ReactJS-Application connecting to localhost on ports 9001 (PBA) and 9002 (SAS). Wednesday, 2022-05-11 will be considered as "today". You may serve it with a static server (yarn global add serve, serve -s .)
