# mail-merge-2018

This repository supports the blog post 'Mail Merge in 2018': https://www.rostrum.blog/2018/06/26/mail-merge/

## TL;DR

You need to populate a .docx (or .html or .pdf) template hundreds of times. Automate this with R, R Markdown, a style document and `knitr`.

## Purpose

With **beginner R users from my department in mind**, this repository contains files that:

* create an R Markdown template to be filled with data
* use a loop to fill the template with data for each row of your tidy dataset in turn
* render the template to .docx format with reference to a style template

The data used here are from the [Wikipedia entry for *Dawson's Creek* episodes](https://www.imdb.com/title/tt0118300/).

## Disclaimer

There's more than one way to do this. Also I'm not claiming that .docx format is great.
