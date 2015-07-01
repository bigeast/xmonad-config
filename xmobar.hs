-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
	font = "xft:YaHei Consolas Hybrid:size=14",
	-- font = "xft:Monofur:size=16",
	-- font = "xft:FZWeiBei\-S03S:size=12",
    bgColor = "#444444",
    fgColor = "#00ff00",
    position = Static { xpos = 1280, ypos = 1060, width = 1920, height = 20 },
    lowerOnStart = True,
    commands = [
        Run Weather "KPAO" ["-t","<tempC>°C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
		-- Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "eno1" ["-t","eno1: <rx>↓, <tx>↑","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "lo" ["-t","lo: <rx>↓, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%Y/%h/%d %H:%M:%S" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%   %memory%   %eno1%   %lo%   <fc=#FFFFCC>%date%</fc>   %KPAO%"
}
