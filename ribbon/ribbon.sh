programdir="."

num=$#
temp=$CLASSPATH
#setting libs path 
libs=./lib/*
append(){
                temp=$temp":"$1
}
for file in $libs;    do
                append $file
done
export CLASSPATH=$temp:.:../:$programdir
echo $CLASSPATH
java -cp $CLASSPATH:eureka-ribbon-client-1.0-SNAPSHOT.jar com.td.eureka.client.ribbon.RibbonApplication $*
