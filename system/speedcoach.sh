if isMac
  then
    _start_time=`date +%s`
  else
    _start_time=`date +%s%N | cut -b1-13`
fi
markStart="script start"
speedcoach ()
{
  if isMac
    then
      _end_time=`date +%s`
    else
      _end_time=`date +%s%N | cut -b1-13`
  fi
  _processing_time=$((_end_time-_start_time))
  #  echo Time to user created:
  echo $_processing_time seconds from $markStart to $1 1>&2
  _start_time=$_end_time
  
}
