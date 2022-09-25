<?xml version="1.0" encoding="us-ascii"?>
<out:stylesheet xmlns:out="http://www.w3.org/1999/XSL/Transform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://xmlns.cit.de/assistants/store" xmlns:s="http://xmlns.cit.de/assistants/store" xmlns:a="http://xmlns.cit.de/assistants/internal" xmlns:t="http://xmlns.cit.de/intelliform/transaction" xmlns:a2="http://xmlns.cit.de/assistants/store#attributes" xmlns:java="http://xml.apache.org/xslt/java" version="1.0" exclude-result-prefixes="xsl s a" extension-element-prefixes="java">
   <out:template match="/*">
      <data class="de.cit.assistants.DataBean" name="myForm">
         <out:if test="@t:form-version">
            <out:attribute name="version">
               <out:value-of select="@t:form-version"/>
            </out:attribute>
         </out:if>
         <out:for-each select="vorrangige_leistung_kriterien">
            <group name="vorrangige_leistung_kriterien" type="multiple">
               <out:for-each select="*">
                  <field type="boolean">
                     <out:attribute name="name">
                        <out:value-of select="local-name()"/>
                     </out:attribute>
                     <out:value-of select="."/>
                  </field>
                  <out:if test="local-name()='other' or starts-with(local-name(), 'other_')">
                     <field type="text">
                        <out:attribute name="name">
                           <out:value-of select="local-name()"/>
                           <out:text>/@label</out:text>
                        </out:attribute>
                        <out:value-of select="@label"/>
                     </field>
                  </out:if>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="vorrangige_leistung_sgb_xi">
            <list name="vorrangige_leistung_sgb_xi" protected="true">
               <out:for-each select="vorrangige_leistung_sgb_xi-item">
                  <item>
                     <out:for-each select="berechnetes_feld">
                        <field name="berechnetes_feld" type="string">
                           <out:if test="string-length(normalize-space(.))=0">
                              <out:attribute name="type">string</out:attribute>
                           </out:if>
                           <out:if test="@xsi:type">
                              <out:attribute name="type">
                                 <out:value-of select="@xsi:type"/>
                              </out:attribute>
                           </out:if>
                           <out:apply-templates select="@*"/>
                           <out:value-of select="."/>
                        </field>
                     </out:for-each>
                  </item>
               </out:for-each>
               <option name="visible" value="true" type="boolean" masked="false"/>
            </list>
         </out:for-each>
      </data>
   </out:template>
   <out:template match="@s:readonly">
      <out:attribute name="{local-name()}">
         <out:value-of select="."/>
      </out:attribute>
   </out:template>
   <out:template match="@*"/>
</out:stylesheet>