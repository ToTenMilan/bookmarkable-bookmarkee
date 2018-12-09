# Bookmarkable Bookmarkee

### Add your webpages and their bookmarks.

You can view the list of your bookmarked websites, click on them and be redirected to their saved bookmarks

##### Things solved
- Webpages index and show view
- Bookmarks index in webpages view (bookmark belongs to webpage)
- handle error of empty webpage input & exisitng webpage/bookmark input
- absolute path parser + some unit tests
- creating webpage and its bookmark by absolute path
- adding bookmark to already existing webpage

##### Issues tried but not solved:
- handling errors of adding absolute path like `hts://www.foo.com` will not parse protocol properly  and add it as is

##### Not enough time for:
- some styling
- tags
- all the rest...