module TreeSitter.Solidity
( tree_sitter_solidity
, getNodeTypesPath
, getTestCorpusDir
) where

import Foreign.Ptr
import TreeSitter.Language
import Paths_tree_sitter_solidity

foreign import ccall unsafe "vendor/tree-sitter-solidity/src/parser.c tree_sitter_solidity" tree_sitter_solidity :: Ptr Language

getNodeTypesPath :: IO FilePath
getNodeTypesPath = getDataFileName "vendor/tree-sitter-solidity/src/node-types.json"

getTestCorpusDir :: IO FilePath
getTestCorpusDir = getDataFileName "vendor/tree-sitter-solidity/test/corpus"
