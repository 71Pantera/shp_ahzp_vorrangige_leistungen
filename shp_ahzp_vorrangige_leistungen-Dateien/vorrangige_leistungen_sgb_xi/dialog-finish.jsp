<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("vorrangige_leistungen_sgb_xi"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("vorrangige_leistungen_sgb_xi"); %>

<%!
static java.lang.reflect.Method getComments;
static {
  try {
    getComments = de.cit.jsp.tags.FormTag.class.getMethod("getComments", String.class);
  } catch (NoSuchMethodException e) {
  }
}
   static String getComments(final Object form, final String fieldname) {
      try {
         return form != null && getComments != null ? (String) getComments.invoke(form, fieldname) : "";
      } catch (Exception e) {
         return "";
      }
   }
%>
    

<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:cit="http://www.cit.de/ns/jsp" xmlns:html="http://www.w3.org/1999/xhtml">
   <head>
      <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
      <meta content="width=device-width, initial-scale=1, user-scalable=yes" name="viewport"/><% String buildRelease = application.getInitParameter("build.release"); if (buildRelease != null) {%><meta name="build.release" content="<%= buildRelease %>"/><% } %><% String buildNumber = application.getInitParameter("build.number"); if (buildNumber != null) {%><meta name="build.number" content="<%= buildNumber %>"/><% } %><% String buildRevision = application.getInitParameter("build.revision"); if (buildRevision != null) {%><meta name="build.revision" content="<%= buildRevision %>"/><% } %><!--plugin:theme-html5-->
    <cit:theme/>
    
      <script charset="utf-8" src="_plugins/theme-html5/script.js?-8236014590501371310" type="text/javascript"/>
  
      <title>shp_ahzp_vorrangige_leistungen - Abschluss Eintrag Vorrangige Leistungen SGB XI</title>
      <cit:control/>
   </head>
   <body>
      <cit:form beanName="myForm">
         <div id="frame">
            <div id="north">
               <div id="logo">
                  <cit:template select="//*[@id='customer-logo']" xhtml="true"/>
               </div>
               <div id="formName">
                  <h1>shp_ahzp_vorrangige_leistungen</h1>
               </div>
            </div>
            <div id="main" class="clearing">
               <div id="center">
                  <div id="wizard" class="clearing">
                     <div id="wizard-body">
                        <h2 id="title">Abschluss Eintrag Vorrangige Leistungen SGB XI</h2>
                        <div class="intro">Die Eingabe für diesen Eintrag ist abgeschlossen. Klicken Sie auf "Weiter", um zur Übersicht dieses Formularbereichs zurückzukehren.</div>
                     </div>
                     <div id="wizard-buttons">
                        <div id="wizard-buttons-right">
                           <cit:inputSubmit value="Weiter" type="ok" id="forward" tabindex="0"/>
                           <cit:inputSubmit type="back" value="Zurück" tabindex="0"/>
                        </div>
                        <div id="wizard-buttons-left">
                           <cit:inputSubmit type="cancel" value="Abbrechen" tabindex="0"/>
                           <cit:inputSubmit type="save" value="Unterbrechen..." tabindex="0"/>
                        </div>
                     </div>
                  </div>
               </div>
               <div id="east">
                  <cit:template select="//*[@id='east-additional']" xhtml="true"/>
                  <cit:template select="//*[@id='east-content']" xhtml="true">
                     <div class="box">
                        <h3 class="box-title"><!----></h3>
                        <p class="box-text" id="required-note">Pflichtfelder</p>
                     </div>
                     <div class="box">
                        <h3 class="box-title">Dialogverlauf</h3>
                        <div class="roadmap">
                           <ul>
                              <li class="past">
                                 <p>
                                    <span class="indicator">●</span>
                                    <span class="item">Kriterien</span>
                                 </p>
                              </li>
                              <li class="present">
                                 <p>
                                    <span class="indicator">»</span>
                                    <span class="item">Vorrangige Leistungen -SGB XI</span>
                                 </p>
                                 <ul class="collapsed">
                                    <li class="future">
                                       <p>
                                          <span class="indicator">○</span>
                                          <span class="item">Vorrangige Leistungen - SGB XI</span>
                                       </p>
                                    </li>
                                 </ul>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </cit:template>
               </div>
            </div>
            <div id="south">
               <cit:template select="//div[@id='footer']/node()" xhtml="true">
                  <div class="footer">
                     <span style="white-space: nowrap;">Powered by cit intelliForm</span>
                  </div>
               </cit:template>
            </div>
         </div>
      </cit:form>
   </body>
</html>