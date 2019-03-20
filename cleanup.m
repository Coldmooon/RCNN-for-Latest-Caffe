% clean test cache

delete('./imdb/cache/imdb_voc_2007_test.mat');
delete('./cachedir/voc_2007_test/*');
delete('./datasets/VOCdevkit2007/local/VOC2007/test_anno.mat')

% clean train cache