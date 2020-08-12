# Save all group contacts

This R script saves all the *unknown contacts* you have in a whatsapp group into a csv file.

## Open whatsapp web on Google Chrome

* Right click on the contacts under group name and select inspect element 

![Point 1](https://github.com/shreykhetrapal/Save-Whatsapp-Group-Chat-Contacts/blob/master/Screen%20Shot%202020-08-11%20at%205.19.43%20PM.png)

* Copy the element containing all the numbers

![Point 2](https://github.com/shreykhetrapal/Save-Whatsapp-Group-Chat-Contacts/blob/master/Screen%20Shot%202020-08-11%20at%205.23.23%20PM.png)

## Cleaning the copied text

Note that the element that we just copied has two sets of identical numbers.

Remove the **<span title =** and copy the text till the **class** 

Keep this and pass it as a string into the input variable. The script will 
- Clean the string 
- Remove the extra spaces
- Remove the + signs of country code

Enjoy!
