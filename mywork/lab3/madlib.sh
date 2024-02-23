#!/bin/bash


clear
echo "Let's build a mad-lib!"
read -p "1. Please give me a name of a person: " NM1
read -p "2. Please give me a verb ending in ing: " VRB1
read -p "3. Please give me a noun: " N1
read -p "4. Please give me a noun: " N2
read -p "5. Please give me an adjective: " ADJ1
read -p "6. Please give me an adverb: " ADV1
read -p "7. Please give me a verb ending in ing: " VRV2
read -p "8. Please give me a location: " L1
read -p "9. Please give me an adjective: " ADJ2

echo "It was the first day of school. 
$NM1 walked in and saw their friend 
$VRB1 at the back of the class. 
$NM1 sat next to their friend, and a girl with a $N1 sat in front of them. 
The teacher asked everyone to complete the exercise on the board. 
The girl turned around and asked for a $N2. 
$NM1 nodded and took a $ADJ1 $N2 out of their backpack. 
She $ADV1 took it and thanked them.
The teacher announced, \"We are $VRV2 in the $L1 today.\" 
The class went and learned a lot. 
It was a $ADJ2 day.
"
