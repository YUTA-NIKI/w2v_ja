from gensim.models import word2vec
import logging

if __name__ == '__main__':
    logging.basicConfig(format='%(asctime)s : %(levelname)s : %(message)s', level=logging.INFO)
    sentences = word2vec.Text8Corpus('./wiki_wakati.txt')

    model = word2vec.Word2Vec(sentences, size=400, min_count=20, window=12)
    model.save("./w2v_jawiki_d400_w12.model")