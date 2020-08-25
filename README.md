# Slick007
Step 1 
  Download the Setup
    1. Slick007 Project(zip File approx 3.8 MB): https://github.com/prateekharyani/Slick007.git   
    2. JDK 8u261 (exe File approx 166 MB): https://www.oracle.com/in/java/technologies/javase/javase-jdk8-downloads.html
    3. JRE 8u261 (exe File approx 79 MB): https://www.oracle.com/java/technologies/javase-jre8-downloads.html
    4. Eclipse(Zip File approx 390 MB): https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2020-06/R/eclipse-jee-2020-06-R-win32-x86_64.zip
    5. Xampp(exe file approx 154 MB): https://www.apachefriends.org/download.html
    6. Apache Tomcat(zip file approx 12 MB): https://tomcat.apache.org/download-90.cgi

Step 2 
  Install the setup
    1. Double Click on jdk-8u261-windows-x64.exe file and complete the setup by clicking next and same for jre-8u261-windows-x64 file
       After Installing the setup ,set the bin folder of jdk1.8.0_261 & jre1.8.0_261 in an environment variable.
    2. Unzip the eclipse-jee-2020-06-R-win32-x86_64 file and open eclipse.exe file
    3. As soon as the Eclipse will Open Click on File-> New -> Dynamic Web Project 
    4. New Dynamic Web Project box will Prompt set the Project Name as Slick007 and then click on New Runtime Select Apache Tomcat v9.0 . click on next then click on Browser and selec the unzip file of the apache-tomcat-9.0.37-windows-x64 and click on finish
    5 Click on Next then Next click on the checkbox Generate web.xml deployment descriptor and click on finish
    6. Now In Project Explorer in Slick007 copy and paste the whole content of WebContent from my GitHub Project
    7. Now in Slick007 -> src -> right click on src -> new -> package and name them as dao and then copy and paste all the files from my project from dao folder same for dbcon,dto,servercon
    8. Now Install the Xampp by double clicking the xampp-windows-x64-7.2.33-0-VC15-installer.exe file click on Next again & again and install the setup
    9. Now Open the Xampp and Start the Apache and MySQL then go to Browser and goto http://localhost/phpmyadmin/
    10. phpMyAdmin will open now create the database as slickdb by clicking on new and click on create
    11. Now goto slickdb click on Import and click on Browse , select the file slickdb from my Project and click on Go (51 Queries will be executed)
    12. Now Goto Eclipse goto Slick007-> Right Click and Run As -> Run On Server Click Next and Click on Finish
    
    FINALLY THE PROJECT WILL RUN 
    
    
    
    
    
  
   
    
    
