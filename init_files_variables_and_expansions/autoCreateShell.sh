#!/bin/bash
echo "Introduce el nombre del archivo a crear: "
echo ""
read fileName
echo "Introduce el código: "
echo ""
read code
echo "#!/bin/bash" > $fileName
echo "$code" >> $fileName
chmod 777 $fileName

echo "Quieres crear un commit y push con este archivo? 0 = No, 1 = Si"
echo ""
read option
if [[ $option -eq 1 ]]; then
   echo "Introduce el mensaje del commit:";
   echo; 
   read commitMsg;
   git add .;
   git commit -m "$commitMsg";
   git push;
   exit;
fi
