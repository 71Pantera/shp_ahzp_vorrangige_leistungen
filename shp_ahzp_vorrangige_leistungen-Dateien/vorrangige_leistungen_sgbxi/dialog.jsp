<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("vorrangige_leistungen_sgbxi--vorrangige_leistungen_sgbxi"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("vorrangige_leistungen_sgbxi--vorrangige_leistungen_sgbxi"); %>

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
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:cit="http://www.cit.de/ns/jsp" xmlns:html="http://www.w3.org/1999/xhtml" lang="de-DE" class="no-js">
   <head>
      <cit:useBean name="myForm" class="de.cit.assistants.DataBean"/>
      <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
      <meta content="width=device-width, initial-scale=1, user-scalable=yes" name="viewport"/><% String buildRelease = application.getInitParameter("build.release"); if (buildRelease != null) {%><meta name="build.release" content="<%= buildRelease %>"/><% } %><% String buildNumber = application.getInitParameter("build.number"); if (buildNumber != null) {%><meta name="build.number" content="<%= buildNumber %>"/><% } %><% String buildRevision = application.getInitParameter("build.revision"); if (buildRevision != null) {%><meta name="build.revision" content="<%= buildRevision %>"/><% } %><!--plugin:theme-html5-->
    <cit:theme/>
    
      <script charset="utf-8" src="_plugins/theme-html5/script.js?-8236014590501371310" type="text/javascript"/>
  
      <title id="page-title">
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>shp_ahzp_vorrangige_leistungen - Vorrangige Leistungen nach dem SGB XI</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:do action="ok"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="vorrangige_leistungen_sgbxi--vorrangige_leistungen_sgbxi">
      <div id="custom_top"/>
      <div id="if">
         <div id="page" class=" has_roadmap_right">
            <header>
               <div class="dynamic_area">
                  <div class="headercontent">
                     <div id="logo"/>
                     <h1>shp_ahzp_vorrangige_leistungen</h1>
                     <section id="useraccount"/>
                  </div>
               </div>
            </header>
            <nav id="roadmap" class="roadmap roadmap_right">
               <h3 class="accessibility">Dialogverlauf</h3>
               <button class="switch" type="button" onclick="return false;" aria-haspopup="true" aria-expanded="true" disabled="disabled">
                  <span class="icon-switch" aria-hidden="true"/>
                  <span class="accessibility">Dialogverlauf öffnen/schließen</span>
               </button>
               <ul class="icons"><% final boolean unvisited_d17e2 = !isVisited(session, "vorrangige_leistungen"); %><li class='past<%= unvisited_d17e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vorrangige_leistungen") != null) { %><span class="item clickable" data-submit-value="resync.vorrangige_leistungen">
                        <a href="" class="label">
                           <span class="labeltext">Kriterien</span>
                           <span class="labelicon" title='<%= unvisited_d17e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Kriterien</span>
                           <span class="labelicon" title='<%= unvisited_d17e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d17e4 = !isVisited(session, "vorrangige_leistungen_sgbxi"); %><li class='present-perfect<%= unvisited_d17e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vorrangige_leistungen_sgbxi") != null) { %><span class="item clickable" data-submit-value="resync.vorrangige_leistungen_sgbxi">
                        <a href="" class="label">
                           <span class="labeltext">Vorrangige Leistungen -SGB XI</span>
                           <span class="labelicon" title='<%= unvisited_d17e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Vorrangige Leistungen -SGB XI</span>
                           <span class="labelicon" title='<%= unvisited_d17e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %><ul class="icons"><% final boolean unvisited_d17e7 = false; %><li class='present<%= unvisited_d17e7 ? " unvisited" : "" %>'>
                           <span class="item">
                              <span class="label">
                                 <span class="labeltext">Vorrangige Leistungen - SGB XI</span>
                                 <span class="labelicon" title='<%= unvisited_d17e7 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                    <span class="accessibility"><%= unvisited_d17e7 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                 </span>
                              </span>
                           </span>
                        </li>
                     </ul>
                  </li>
               </ul>
            </nav>
            <div class="dynamic_area">
               <article>
                  <section id="content" class=" narrow">
                     <cit:form beanName="myForm">
                        <div class="wizard-body">
                           <h2 id="title">Vorrangige Leistungen nach dem SGB XI</h2>
                           <cit:conditional test="!assistants.request.valid &amp;&amp; (assistants.request.strictInvalid === undefined || assistants.request.strictInvalid === true)">
                              <p class="invalidInfo v2">
                                 <span class="icon-warning-sign" aria-hidden="true"/>
                                 <strong>Fehler beim Ausfüllen: Bitte überprüfen Sie Ihre Angaben.</strong>
                              </p>
                           </cit:conditional>
                           <cit:conditional test="!assistants.request.valid &amp;&amp; assistants.request.softInvalid === true">
                              <p class="invalidInfo v2 loose">
                                 <span class="icon-exclamation-sign" aria-hidden="true"/>
                                 <strong>Mögliche Fehler beim Ausfüllen: Bitte kontrollieren Sie Ihre Angaben nochmals. Wenn Sie sicher sind, klicken Sie erneut auf <em class="button-name icon-arrow-right">Weiter</em>.</strong>
                              </p>
                           </cit:conditional>
                           <cit:inputComputed name="berechnetes_feld"/>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d19e2 = !isVisited(session, "vorrangige_leistungen"); %><li class='past<%= unvisited_d19e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vorrangige_leistungen") != null) { %><span class="item clickable" data-submit-value="resync.vorrangige_leistungen">
                                    <a href="" class="label">
                                       <span class="labeltext">Kriterien</span>
                                       <span class="labelicon" title='<%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Kriterien</span>
                                       <span class="labelicon" title='<%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d19e4 = !isVisited(session, "vorrangige_leistungen_sgbxi"); %><li class='present-perfect<%= unvisited_d19e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vorrangige_leistungen_sgbxi") != null) { %><span class="item clickable" data-submit-value="resync.vorrangige_leistungen_sgbxi">
                                    <a href="" class="label">
                                       <span class="labeltext">Vorrangige Leistungen -SGB XI</span>
                                       <span class="labelicon" title='<%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vorrangige Leistungen -SGB XI</span>
                                       <span class="labelicon" title='<%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %><ul class="icons"><% final boolean unvisited_d19e7 = false; %><li class='present<%= unvisited_d19e7 ? " unvisited" : "" %>'>
                                       <span class="item">
                                          <span class="label">
                                             <span class="labeltext">Vorrangige Leistungen - SGB XI</span>
                                             <span class="labelicon" title='<%= unvisited_d19e7 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                                <span class="accessibility"><%= unvisited_d19e7 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                             </span>
                                          </span>
                                       </span>
                                    </li>
                                 </ul>
                              </li>
                           </ul>
                        </nav>
                        <div class="wizard-buttons">
                           <div class="wizard-buttons-row">
                              <div class="button">
                                 <cit:inputSubmit type="cancel" class="submit-cancel prio3 icon-remove-sign" tabindex="0" value="Abbrechen"/>
                              </div>
                              <div class="button">
                                 <cit:inputSubmit type="save" class="submit-save prio3 icon-save" tabindex="0" value="Unterbrechen..." disabled="true" title="Sie können den Vorgang unterbrechen, wenn Sie den aktuellen Formularbereich verlassen und zur Hauptebene zurückkehren."/>
                              </div>
                              <div class="button">
                                 <cit:inputSubmit type="back" class="submit-back prio2 icon-arrow-left" tabindex="0" value="Zurück"/>
                              </div>
                              <div class="button">
                                 <cit:inputSubmit class="submit-forward" tabindex="0" value="Weiter" type="forward"/>
                              </div>
                           </div>
                        </div>
                     </cit:form>
                     <footer>
                        <div class="footercontent">
                           <span>Powered by cit intelliForm</span>
                        </div>
                     </footer>
                  </section>
               </article>
            </div>
         </div>
      </div>
      <div id="custom_bottom"/>
   </body>
</html>