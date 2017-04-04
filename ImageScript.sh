#! /bin/bash
function PathSelect
{
clear
echo ""
echo "Please write full path to directory"
echo ""
echo -n "> "
read pathF
mkdir $pathF/Image
MainMenu
}

function TypeDF
{
echo ""
echo "Please select directory(1) or file(2)"
echo ""
echo -n "> "
read selection
	case $selection in
		1) PathSelectD ;;
		2) PathSelectF ;;
		*) TypeSelect ;;
	esac
}
function TypeJP
{
clear
echo ""
echo "Please write name and type of your file"
echo ""
echo -n "> "
read ftype
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "------------ TYPE --------------"
	echo "-- 1) JPG ----------------------"
	echo "-- 2) PNG ----------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Exit"
	echo -n ">"
	read selection
	case $selection in
		1) convert $pathF/$ftype $pathF/Image/Con.png ;;
		2) convert $pathF/$ftype $pathF/Image/Con.jpg ;;
		0) MainMenu ;;
		*) echo "Please type 1-3 or 0"
	esac
done
MainMenu
}

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
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Exit"
	echo "$pathF"
	echo -n ">"
	read selection
	case $selection in
		1) TypeJP ;;
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
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Back"
	echo -n ">"
        read selection
        case $selection in
                1) QType ;;
                2) ResType ;;
                3) RotType ;;
                0) MainMenu ;;
                *) echo "Please type 1-3 or 0"
        esac
done
}

function ResType
{
clear
echo ""
echo "Please write name and type of your file"
echo ""
echo -n "> "
read ftype
clear
echo ""
echo "Please write resolution in %"
echo ""
echo -n "> "
read res
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "------------ TYPE --------------"
	echo "-- 1) JPG ----------------------"
	echo "-- 2) PNG ----------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Exit"
	echo -n ">"
	read selection
	case $selection in
		1) convert $pathF/$ftype -resize $res $pathF/Image/Res$ftype ;;
		2) convert $pathF/$ftype -resize $res $pathF/Image/Res$ftype ;;
		0) MainMenu ;;
		*) echo "Please type 1-3 or 0"
	esac
done
MainMenu
}
function RotType
{
clear
echo ""
echo "Please write name and type of your file"
echo ""
echo -n "> "
read ftype
clear
echo ""
echo "Please write deg to rotate"
echo ""
echo -n "> "
read deg
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "------------ TYPE --------------"
	echo "-- 1) JPG ----------------------"
	echo "-- 2) PNG ----------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Exit"
	echo -n ">"
	read selection
	case $selection in
		1) convert $pathF/$ftype -rotate $deg $pathF/Image/Charc$ftype ;;
		2) convert $pathF/$ftype -rotate $deg $pathF/Image/Charc$ftype ;;
		0) MainMenu ;;
		*) echo "Please type 1-3 or 0"
	esac
done
MainMenu
}

function QType
{
clear
echo ""
echo "Please write name and type of your file"
echo ""
echo -n "> "
read ftype
clear
echo ""
echo "Please write value(%) for change quality"
echo ""
echo -n "> "
read qua
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "------------ TYPE --------------"
	echo "-- 1) JPG ----------------------"
	echo "-- 2) PNG ----------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Exit"
	echo -n ">"
	read selection
	case $selection in
		1) convert $pathF/$ftype -resize $qua $pathF/Image/Qual$ftype ;;
		2) convert $pathF/$ftype -resize $qua $pathF/Image/Qual$ftype ;;
		0) MainMenu ;;
		*) echo "Please type 1-3 or 0"
	esac
done
MainMenu
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
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Back"
	echo -n ">"
	read selection
        case $selection in
                1) TypeEF ;;
                2) TypeIM ;;
                0) MainMenu ;;
                *) echo "Please type 1-2 or 0"
        esac
done
}

function TypeEF
{
clear
echo ""
echo "Please write name and type of your file"
echo ""
echo -n "> "
read ftype
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "------------ TYPE --------------"
	echo "-- 1) JPG ----------------------"
	echo "-- 2) PNG ----------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Exit"
	echo -n ">"
	read selection
	case $selection in
		1) convert $pathF/$ftype -charcoal 1 $pathF/Image/Charc$ftype ;;
		2) convert $pathF/$ftype -charcoal 1 $pathF/Image/Charc$ftype ;;
		0) MainMenu ;;
		*) echo "Please type 1-3 or 0"
	esac
done
MainMenu
}

function TypeIM
{
clear
echo ""
echo "Please write name and type of your file"
echo ""
echo -n "> "
read ftype
selection=
until [[ "$selection" > "0"] && ["$selection" < "4" ]]; do
	clear
	echo "--------------------------------"
	echo "------------ TYPE --------------"
	echo "-- 1) JPG ----------------------"
	echo "-- 2) PNG ----------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "--------------------------------"
	echo "------------------------ 0) Exit"
	echo -n ">"
	read selection
	case $selection in
		1) convert $pathF/$ftype -implode 1 $pathF/Image/Implo$ftype ;;
		2) convert $pathF/$ftype -implode 1 $pathF/Image/Implo$ftype ;;
		0) MainMenu ;;
		*) echo "Please type 1-3 or 0"
	esac
done
MainMenu
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


PathSelect
