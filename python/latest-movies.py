#!/usr/bin/env python

# latest-movies: prints latest popular movies from rarbg
# jessy@jessywilliams.com

# ------------------------------------------------------------------------------

try:
    from urllib.request import Request, urlopen
except ImportError:
    from urllib2 import Request, urlopen
from re import split
from xml.etree import ElementTree

URL = 'https://rarbg.to/rssdd.php?categories=14;15;16;17;21;22;42;44;45;46;47;48'

xml = urlopen(Request(URL, headers={'User-Agent': 'Mozilla/5.0'})).read()
tree = ElementTree.fromstring(xml)
for title in sorted({
    split(r'\.(?:19|20)\d\d\.', element.text, 2)[0].replace('.', ' ').title()
    for element in tree.findall('./channel/item/title')
}): print(title)
