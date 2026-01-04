# Weather Beacon

This project is to make a mini-replica of the Canada Life Weather Beacon

## setup.sh

Is just bashscript to ensure that the scrapeWeather.py code goes off at 7:00am, 11:00am, 3:00pm, and 7:00pm, following the schedule of the actually Canada Life Weather Beacon. This only needs to be run once.

    ** ./setup.sh scrapeWeather.py **

## scrapeWeather.py

This is a simple webscraper that checks the weather on the weather network four times a day. This output is handed off to ___ , so the beacon displays the relevant light show. This doesn't need to be formally run, as setup.sh ensures that it goes runs at the correct times.