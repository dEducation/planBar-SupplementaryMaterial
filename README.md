# planBar: Supplementary Material
This repository contains all the material to the paper "planBar – A Time Management Tool for Students at Swiss High Schools". The paper was submitted to University of Fribourg in August 2022 ("GymInf", Master Equivalent in Computer Science).

## /01_planBar_Paper
Final version (2022-08-08) of the paper.

## /02_Figures
All figures used in the paper (high resolution)

## /03_Questionnaires
Questionnaires used in the project.

## /04_planBar-Screenshots-History
Screenshots of the application showing different states during the development of planBar.

## /05_planBar-Application
The application (v1, August 2022) is only for demo purpose, is not to be considered as an open-source software, and must not be published. To run the demo application, follow the following four steps:
1. Create the two necessary mySQL databases (localhost) and users by running <i>planBarDEMO_CREATE.sql</i> within your local mySQL engine.
2. Run the applications <i>planBarDEMO_SAS.jar</i> and <i>planBarDEMO_PBA.jar</i> in order to create the required database structures
3. Stop the java applications (<i>planBarDEMO_SAS.jar</i> and <i>planBarDEMO_PBA.jar</i>) and fill your databases with some data by running the script <i>planBarDEMO_FILL.sql</i>. Then restart the java applications (<i>planBarDEMO_SAS.jar</i> and <i>planBarDEMO_PBA.jar</i>).
4. Serve the frontend (ReactJS App) with a static server (npm install -g serve, run serve /planBar_Frontend) and login to the application with the following credentials:<br>User: <i>student&#64;planbar.ch</i><br>
Password: <i>student</i>

Note: Wednesday, 2022-05-11 will be considered as "today"

### planBarDEMO_CREATE.sql
SQL script to create necessary databases (localhost).

### planBarDEMO_FILL.sql
SQL script to fill some test data into the databases (localhost).

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
Built ReactJS-Application connecting to localhost on ports 9001 (PBA) and 9002 (SAS). Wednesday, 2022-05-11 will be considered as "today". It can be served with a static server (npm install -g serve, serve /planBar_Frontend)
