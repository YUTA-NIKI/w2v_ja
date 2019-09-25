pip install --upgrade gensim
curl https://dumps.wikimedia.org/jawiki/latest/jawiki-latest-pages-articles.xml.bz2 -o data/jawiki-latest-pages-articles.xml.bz2
python WikiExtractor.py -o data/wikitext data/jawiki-latest-pages-articles.xml.bz2
find data/wikitext/ | grep wiki | awk '{system("cat "$0" >> wiki.txt")}'
mecab -d /home/b2018yniki/local/lib/mecab/dic/mecab-ipadic-neologd/ -Owakati wiki.txt -o wiki_wakati.txt
nkf -w --overwrite wiki_wakati.txt
python train_w2v.py