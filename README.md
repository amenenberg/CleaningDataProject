# CleaningDataProject
Course project for cleaning data coursera class


The file run_Analysis.R assumes the user has downloaded the following data set into the working directory:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset is data experiment data from an accelerameter gathered from various test subjects performing various activities

The script loads the data, merges the test and training data, isolates the standard deviation and mean variables, cleans up the labels, and then summarizes all of the variables by subject and activity.

Variables:

activityname - name of activity that was being performed by subject when data was collected

subject - ID corresponding to subject who data was collected from


The rest of the variables are averages of various measurements taken by an individual subject performing an activity:
"tbodyaccelerationmeanx"                    
"tbodyaccelerationmeany"                   
"tbodyaccelerationmeanz"                    
"tgravityaccelerationmeanx"                
"tgravityaccelerationmeany"                 
"tgravityaccelerationmeanz"                
"tbodyaccelerationjerkmeanx"                
"tbodyaccelerationjerkmeany"               
"tbodyaccelerationjerkmeanz"                
"tbodygyromeanx"                           
"tbodygyromeany"                            
"tbodygyromeanz"                           
"tbodygyrojerkmeanx"                        
"tbodygyrojerkmeany"                       
"tbodygyrojerkmeanz"                        
"tbodyaccelerationmagmean"                 
"tgravityaccelerationmagmean"               
"tbodyaccelerationjerkmagmean"             
"tbodygyromagmean"                          
"tbodygyrojerkmagmean"                     
"fbodyaccelerationmeanx"                    
"fbodyaccelerationmeany"                   
"fbodyaccelerationmeanz"                    
"fbodyaccelerationjerkmeanx"               
"fbodyaccelerationjerkmeany"                
"fbodyaccelerationjerkmeanz"               
"fbodygyromeanx"                            
"fbodygyromeany"                           
"fbodygyromeanz"                            
"fbodyaccelerationmagmean"                 
"fbodyaccelerationjerkmagmean"              
"fbodygyromagmean"                         
"fbodygyrojerkmagmean"                      
"tbodyaccelerationstandarddeviationx"      
"tbodyaccelerationstandarddeviationy"       
"tbodyaccelerationstandarddeviationz"      
"tgravityaccelerationstandarddeviationx"    
"tgravityaccelerationstandarddeviationy"   
"tgravityaccelerationstandarddeviationz"    
"tbodyaccelerationjerkstandarddeviationx"  
"tbodyaccelerationjerkstandarddeviationy"   
"tbodyaccelerationjerkstandarddeviationz"  
"tbodygyrostandarddeviationx"               
"tbodygyrostandarddeviationy"              
"tbodygyrostandarddeviationz"               
"tbodygyrojerkstandarddeviationx"          
"tbodygyrojerkstandarddeviationy"           
"tbodygyrojerkstandarddeviationz"          
"tbodyaccelerationmagstandarddeviation"     
"tgravityaccelerationmagstandarddeviation" 
"tbodyaccelerationjerkmagstandarddeviation" 
"tbodygyromagstandarddeviation"            
"tbodygyrojerkmagstandarddeviation"         
"fbodyaccelerationstandarddeviationx"      
"fbodyaccelerationstandarddeviationy"       
"fbodyaccelerationstandarddeviationz"      
"fbodyaccelerationjerkstandarddeviationx"   
"fbodyaccelerationjerkstandarddeviationy"  
"fbodyaccelerationjerkstandarddeviationz"   
"fbodygyrostandarddeviationx"              
"fbodygyrostandarddeviationy"               
"fbodygyrostandarddeviationz"              
"fbodyaccelerationmagstandarddeviation"     
"fbodyaccelerationjerkmagstandarddeviation"
"fbodygyromagstandarddeviation"             
"fbodygyrojerkmagstandarddeviation"   

