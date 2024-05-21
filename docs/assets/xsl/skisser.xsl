<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:et="http://ns.exiftool.org/1.0/"
    et:toolkit="Image::ExifTool 12.77" xmlns:ExifTool="http://ns.exiftool.org/ExifTool/1.0/"
    xmlns:System="http://ns.exiftool.org/File/System/1.0/"
    xmlns:File="http://ns.exiftool.org/File/1.0/" xmlns:IFD0="http://ns.exiftool.org/EXIF/IFD0/1.0/"
    xmlns:XMP-x="http://ns.exiftool.org/XMP/XMP-x/1.0/"
    xmlns:XMP-aux="http://ns.exiftool.org/XMP/XMP-aux/1.0/"
    xmlns:XMP-exifEX="http://ns.exiftool.org/XMP/XMP-exifEX/1.0/"
    xmlns:XMP-xmp="http://ns.exiftool.org/XMP/XMP-xmp/1.0/"
    xmlns:XMP-photoshop="http://ns.exiftool.org/XMP/XMP-photoshop/1.0/"
    xmlns:XMP-xmpMM="http://ns.exiftool.org/XMP/XMP-xmpMM/1.0/"
    xmlns:XMP-dc="http://ns.exiftool.org/XMP/XMP-dc/1.0/"
    xmlns:XMP-crs="http://ns.exiftool.org/XMP/XMP-crs/1.0/"
    xmlns:XMP-xmpRights="http://ns.exiftool.org/XMP/XMP-xmpRights/1.0/"
    xmlns:XMP-tiff="http://ns.exiftool.org/XMP/XMP-tiff/1.0/"
    xmlns:XMP-exif="http://ns.exiftool.org/XMP/XMP-exif/1.0/"
    xmlns:IPTC="http://ns.exiftool.org/IPTC/IPTC/1.0/"
    xmlns:Photoshop="http://ns.exiftool.org/Photoshop/Photoshop/1.0/"
    xmlns:ExifIFD="http://ns.exiftool.org/EXIF/ExifIFD/1.0/"
    xmlns:ICC-header="http://ns.exiftool.org/ICC_Profile/ICC-header/1.0/"
    xmlns:ICC_Profile="http://ns.exiftool.org/ICC_Profile/ICC_Profile/1.0/"
    xmlns:Composite="http://ns.exiftool.org/Composite/1.0/"
    exclude-result-prefixes="xs html rdf et IPTC" version="1.0">
    <xsl:output method="html"/>

    <!-- transform the root element (TEI) into an HTML template -->
    <xsl:template match="rdf:RDF">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <xsl:text>&#xa;</xsl:text>
        <html lang="en" xml:lang="en">
            <head>
                <title>Santessonos Skor: metadata</title>

            </head>
            <body>
                <div class="row">
                    <div class="column-25">
                        <a class="button-back button-default" href="skisser.html"> Tillbaka </a>
                    </div>
                    <div class="column"> </div>
                    <div class="column-25"> </div>
                </div>
                <div class="row">
                    <div class="column">
                        <h2>Skiss av : metadata</h2>
                        <h3>Bildinformation</h3>
                        <p> Skapare: <xsl:value-of select="//XMP-dc:Creator"/>
                        </p>
                        <p> Titel: <xsl:value-of select="//XMP-dc:Title"/>
                        </p>
                        <p> Beskrivning: <xsl:value-of select="//XMP-dc:Description"/>
                        </p>
                        <p> Nyckelord: <xsl:for-each select="//XMP-dc:Subject/rdf:Bag/rdf:li">
                                <xsl:apply-templates select="."/><xsl:text>, </xsl:text>
                            </xsl:for-each>
                        </p>
                        <p> Beskrivningsskapare: <xsl:value-of
                                select="//XMP-photoshop:CaptionWriter"/>
                        </p>
                        <p> Upphovsrätt: <xsl:value-of select="//XMP-dc:Rights"/>
                        </p>
                        <p> Bildstorlek: <xsl:value-of select="//Composite:ImageSize"/></p>
                    </div>
                    <div class="column"/>
                </div>
                <div class="row">
                    <div class="column">
                        <h3>Bildfångst</h3>
                        <p> Kamera: <xsl:value-of select="//IFD0:Make"/>
                            <xsl:value-of select="//IFD0:Model"/>
                        </p>
                        <p> Lins: <xsl:value-of select="//XMP-aux:Lens"/>
                        </p>
                        <p> Slutartid: <xsl:value-of select="//Composite:ShutterSpeed"/>
                        </p>
                        <p> ISO: <xsl:value-of select="//ExifIFD:ISO"/>
                        </p>
                        <p> Bländare: <xsl:value-of select="//Composite:Aperture"/>
                        </p>
                        <p> Blixt: <xsl:value-of select="//Composite:Flash"/>
                        </p>
                        <p> Skapad: <xsl:value-of select="//Composite:DateTimeCreated"/>
                        </p>
                    </div>
                    <div class="column"/>
                </div>

            </body>
        </html>
    </xsl:template>
    <!--  
    <xsl:template match="rdf:bag">
        <xsl:for-each select="rdf:li">
            <xsl:apply-templates/><xsl:text>, </xsl:text> 
        </xsl:for-each>
    </xsl:template>
    -->

</xsl:stylesheet>
