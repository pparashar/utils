#!bash
#shell script to perform git pull over all subdirectories at depth 2
#
pwd=`pwd`
for dir in `ls -d */`
do
	echo "**Initiating pull for $dir"
	for d in `ls $pwd/$dir`
	do
		echo "*** going to pull $d ***"
		(cd $dir/$d && git pull)
		echo "***********************"
	done
done

