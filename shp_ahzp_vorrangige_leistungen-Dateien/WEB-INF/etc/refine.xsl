<?xml version="1.0" encoding="us-ascii"?>
<out:stylesheet xmlns:out="http://www.w3.org/1999/XSL/Transform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ifp="http://xmlns.cit.de/intelliform/pages/annotation/1.0" xmlns:a="http://xmlns.cit.de/assistants/internal" xmlns:java="http://xml.apache.org/xslt/java" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0" exclude-result-prefixes="xsl" extension-element-prefixes="java">
   <out:template match="/*">
      <out:copy>
         <out:apply-templates select="@*"/>
         <out:for-each select="idData">
            <out:apply-templates select="." mode="copy"/>
         </out:for-each>
         <out:for-each select="vorrangige_leistung_kriterien">
            <out:copy>
               <out:for-each select="*">
                  <out:copy>
                     <out:attribute name="label">
                        <out:value-of select="@a:label"/>
                     </out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="vorrangige_leistung_sgb_xi">
            <out:copy>
               <out:for-each select="vorrangige_leistung_sgb_xi-item">
                  <out:copy>
                     <out:for-each select="berechnetes_feld">
                        <out:copy>
                           <out:value-of select="."/>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
      </out:copy>
   </out:template>
   <out:template match="@*">
      <out:copy>
         <out:apply-templates select="node()"/>
      </out:copy>
   </out:template>
   <out:template match="@*|node()" mode="copy">
      <out:copy>
         <out:apply-templates select="@*|node()" mode="copy"/>
      </out:copy>
   </out:template>
   <out:template match="@*[namespace-uri()='http://xmlns.cit.de/assistants/internal']" mode="copy"/>
</out:stylesheet>