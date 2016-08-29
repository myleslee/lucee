## Install wkhtmltopdf

<http://wkhtmltopdf.org/downloads.html>


## wkhtmltopdf Docs

<http://wkhtmltopdf.org/usage/wkhtmltopdf.txt>

## Tips

### Layout Examples

Run the following commands in Terminal(Mac) or Command Prompt(Windows):

~~~sh
# bootstrap.pdf
wkhtmltopdf --viewport-size 1280x1024 http://getbootstrap.com/examples/jumbotron-narrow/ bootstrap.pdf
~~~

~~~sh
# latex.pdf
wkhtmltopdf --page-width 48cm --page-height 65cm -T 0 -B 0 -L 0 -R 0 https://www.latex-project.org/ latex.pdf
~~~

#### Page size conversion

- `--page-width`:  (px * 0.0333333)cm
- `--page-height`: (px * 0.04)cm

There is an upper limit for a PDF page dimension: 200 inches (508cm)

### Manual page break

~~~css
.break {
    display: block;
    clear: both;
    page-break-after: always;
}
~~~

### Encoding a font using Base64 format

~~~lucee
str = toBase64(fileReadBinary("SigmarOne.woff"), "utf-8");
writeOutput(str);
~~~

