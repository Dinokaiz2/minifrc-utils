# MiniFRC Matchmaking

Use the [Idle Loop MatchMaker](https://idleloop.com/matchmaker/download.php).

Put each team number on a new line in `team-numbers.txt`. Then generate schedule with

```bash
MatchMaker -t $(grep -c '.' team-numbers.txt) -r <number of rounds> -b -s -l team-numbers.txt > schedule.txt
./prepare-for-fms.sh schedule.txt
```


