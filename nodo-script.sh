udo apt-get update 
sudo apt-get -y install apache2
cat <<EOF>/var/www/html/index.html
<html>
<head>
<title>Hola ${1} </title>
</head>
<body>
<h1> Hola ${1} </h1>
</body>
>/html>
EOF
