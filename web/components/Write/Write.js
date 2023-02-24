import React from 'react'
import ReactMarkdown from 'react-markdown'
import gfm from 'remark-gfm'
import rehypeHighlight from 'rehype-highlight'

const markdown = `A paragraph with *emphasis* and **strong importance**.

> A block quote with ~strikethrough~ and a URL: https://reactjs.org.

* Lists
* [ ] todo
* [x] done

A table:

| a | b |
| - | - |
`

export default function(){
    return <ReactMarkdown rehypePlugins={[rehypeHighlight]} remarkPlugins={[gfm]} children={markdown} className="markdown-html"/>
}
