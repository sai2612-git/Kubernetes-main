for j in {1..10}; do  
  for i in {1..1000}; do
    curl -s -o /dev/null -w "%{http_code}\n" http://a52d688738c8f4adeb16bc92b8ee05eb-739072275.ap-south-1.elb.amazonaws.com/ &  
  done
  wait  # Correct command to wait for all background jobs
done
