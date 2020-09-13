{
  enable = true;
  colorScheme = 1;
  fields = [ "PID" "USER" "PRIORITY" "M_SIZE" "M_SHARE" "STATE" "PERCENT_CPU" "PERCENT_MEM" "TIME" "COMM" ] ;
  hideThreads = true;
  highlightBaseName = true;
  meters = {
    left = ["LeftCPUs2" "Memory" "Swap"];
    right = ["RightCPUs2" "Tasks" "LoadAverage" { kind = "Uptime"; mode = 2; }];
  };
  treeView = true;
}
