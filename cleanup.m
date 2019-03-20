function cleanup(cache)

if ~exist('cache', 'var') || isempty(cache)
  cache = 'test';
end

switch cache
  case 'test'
    % clean test cache
    delete('./imdb/cache/imdb_voc_2007_test.mat');
    delete('./cachedir/voc_2007_test/*');
    delete('./datasets/VOCdevkit2007/local/VOC2007/test_anno.mat');
    fprintf('done!')
  case 'train'
    % clean train cache  
    delete('./imdb/cache/imdb_voc_2007_train.mat');
    delete('./imdb/cache/imdb_voc_2007_trainval.mat');
    delete('./cachedir/voc_2007_train/*');
    delete('./cachedir/voc_2007_trainval/*');
    fprintf('done!')
  case 'feature'
    % clean feature cache  
    delete('./feat_cache/v1_finetune_voc_2007_trainval_iter_70k/*')
    fprintf('done!')
  otherwise
    error('unknown objective ''%s'' [valid options: ''cache'' or ''train'' or ''feature'']', cache);
end     
% clean train cache