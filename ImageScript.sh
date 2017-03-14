#! /bin/bash
function MainMenu
{
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "------------ MENU --------------"
	echo "-- 1) Convert ------------------"
	echo "-- 2) Effects ------------------"
	echo "-- 3) Custom--------------------"
	echo "-- 0) Exit ---------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo -n ">"
	read selection
	case $selection in
		1) ConMenu ;;
		2) EMenu ;;
		3) CMenu ;;
		0) sure ;;
		*) echo "Please type 1-3 or 0"
	esac
done
}

function CMenu
{
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "----------- CUSTOM -------------"
	echo "-- 1) Quality ------------------"
	echo "-- 2) Resolution ---------------"
	echo "-- 3) Rotation -----------------"
	echo "-- 0) Back ---------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo -n ">"
        read selection
        case $selection in
                1) ConMenu ;;
                2) EMenu ;;
                3) CMenu ;;
                0) MainMenu ;;
                *) echo "Please type 1-3 or 0"
        esac
done
}

function EMenu
{
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "----------- EFFECTS ------------"
	echo "-- 1) Charcoal -----------------"
	echo "-- 2) Implode ------------------"
	echo "-- 0) Back ---------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	read selection
        case $selection in
                1) ConMenu ;;
                2) EMenu ;;
                0) MainMenu ;;
                *) echo "Please type 1-2 or 0"
        esac
done
}

function ConMenu
{
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "----------- CONVERT ------------"
	echo "-- 1) png->jpg -----------------"
	echo "-- 2) jpg->png -----------------"
	echo "-- 0) Back ---------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo -n ">"
	read selection
        case $selection in
                1) ConMenu ;;
                2) EMenu ;;
                0) MainMenu ;;
                *) echo "Please type 1-2 or 0"
        esac
done
}

function sure
{
echo -n "Are u sure? y/n "
         read selection
         case $selection in
              y) clear
                 exit ;;
              n) clear
                 MainMenu ;;
              *) sure ;;
         esac
}

MainMenu