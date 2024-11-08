#! /bin/bash
# cars.sh
# Braedon Wan
# CPSC 298

userInput=0
while [ "$userInput" != "3" ]
do
    read -rp "To enter a new car, type 1. To display a list of cars, type 2. To quit and exit program, type 3. " userInput
    case $userInput in
        1)
            read -rp "Enter the car's year: " carYear
            read -rp "Enter the car's make: " carMake
            read -rp "Enter the car's model " carModel
            newCar="$carYear:$carMake:$carModel"
            echo "$newCar" >> My_old_cars ;;
        2)
            sort -n My_old_cars;;
        3)
            echo "Goodbye";;
        *);;
    esac
done