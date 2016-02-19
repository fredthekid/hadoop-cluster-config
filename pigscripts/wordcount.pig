book = LOAD 'hdfs://104.131.157.135:9000/data/small/warandpeace.txt' USING PigStorage() AS (lines:chararray);
words = FOREACH book GENERATE FLATTEN(TOKENIZE(lines)) as word;
wordsGrouped = GROUP words BY word;
wordsAggra = FOREACH wordsGrouped GENERATE group as word, COUNT(words);
wordsSorted = ORDER wordsAggra BY $1 DESC;
STORE wordsSorted INTO 'hdfs://104.131.157.135:9000/data/small/war_and_peace_wordcount';
