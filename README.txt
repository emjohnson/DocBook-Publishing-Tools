This repository contains the tools needed for generating output from DocBook 
XML source files. It contains three folers:
* catalog - an XML catalog used to locate the base stylesheets on a local
            system
* lib - a collection of tools used to generate content including: Apache FOP, 
        the Saxxon XSLT processor, the DocBook 5.0 schema, the DocBook XSLT 
        stylesheets, and parts of the Apache Xalan XSLT processor
* custom - a basic customization layer for the content
All of these folder must be placed in a template folder that is the peer of 
your content folders:
doc -
  book1
  book2
  template - 
    catalog
    lib
    custom
It is best to use svn:external to link in the lib and catalog folders since 
these are generic and used for all content generation. The custom folder can 
be copied into your repository and modified to achieve the look and feel 
desired for your specific project.
  