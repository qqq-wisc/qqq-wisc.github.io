--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll


--------------------------------------------------------------------------------
config :: Configuration
config = defaultConfiguration
  { destinationDirectory = "docs"
  }

main :: IO ()
main = hakyllWith config $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match (fromList ["index.markdown"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls
    
    match "posts/*" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    create ["blog.html"] $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "posts/*"
            let archiveCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    constField "title" "Blog"            `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/archive.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls

    match ("files/*") $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
      route   idRoute
      compile compressCssCompiler

    match "templates/*" $ compile templateBodyCompiler


--------------------------------------------------------------------------------
postCtx :: Context String
postCtx =
    dateField "date" "%B %e, %Y" `mappend`
    defaultContext
