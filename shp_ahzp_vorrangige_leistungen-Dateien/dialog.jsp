<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("vorrangige_leistungen"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("vorrangige_leistungen"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>shp_ahzp_vorrangige_leistungen - Vorrangige Leistungen - Kriterien</title>
      <cit:script href="/WEB-INF/etc/commons.js">/**/</cit:script>
      <cit:script href="/WEB-INF/etc/script.js" fileEncoding="utf-8">/**/</cit:script>
      <cit:script href="/WEB-INF/etc/custom.js" fileEncoding="windows-1252">/**/</cit:script>
      <cit:template select="/.." xhtml="true"/>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:if action="gosub" href="vorrangige_leistung_sgb_xi.jsp" test="myForm.vorrangige_leistung_kriterien.xixii"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="vorrangige_leistungen">
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
               <ul class="icons"><% final boolean unvisited_d4e2 = !isVisited(session, "vorrangige_leistungen"); %><li class='present<%= unvisited_d4e2 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Kriterien</span>
                           <span class="labelicon" title='<%= unvisited_d4e2 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d4e2 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e4 = !isVisited(session, "vorrangige_leistung_sgb_xi"); %><li class='future<%= unvisited_d4e4 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vorrangige Leistungen -SGB XI</span>
                           <span class="labelicon" title='<%= unvisited_d4e4 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e4 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                     <ul class="collapsed"><% final boolean unvisited_d4e7 = false; %><li class='future<%= unvisited_d4e7 ? " unvisited" : "" %>'>
                           <span class="item">
                              <span class="label">
                                 <span class="labeltext">Vorrangige Leistungen - SGB XI</span>
                                 <span class="labelicon" title='<%= unvisited_d4e7 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                    <span class="accessibility"><%= unvisited_d4e7 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Vorrangige Leistungen - Kriterien</h2>
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
                           <p class="required-hint">
                              <em>
                                 <span class="required-mark" aria-hidden="true">*</span>
                                 <span aria-hidden="true"> Pflichtfelder</span>
                                 <span class="accessibility">Diese Seite enthält Pflichtfelder.</span>
                              </em>
                           </p>
                           <header class="intro"><h3><cit:display errorReplacement="―" expression="My.undefinedReplacement(getApplicantName())"/></h3><br/><br/> <ul><li><a title="Lorum ipsum dolor sit amet" href="#nowhere">Lorem</a></li><li><a title="Aliquam tincidunt mauris eu risus" href="#nowhere">Aliquam</a></li><li><a title="Morbi in sem quis dui placerat ornare" href="#nowhere">Morbi</a></li><li><a title="Praesent dapibus, neque id cursus faucibus" href="#nowhere">Praesent</a></li><li><a title="Pellentesque fermentum dolor" href="#nowhere">Pellentesque</a></li></ul></header>
                           <cit:conditional test="myForm.transaction">
                              <cit:xmlResource id="case" scope="SESSION"/>
                           </cit:conditional>
                           <section class="infobox narrow"><ol><li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li>Aliquam tincidunt mauris eu risus.</li><li>Vestibulum auctor dapibus neque.</li></ol></section>
                           <cit:conditional test="myForm.transaction">
                              <cit:xmlResource id="caseAll" scope="SESSION"/>
                           </cit:conditional>
                           <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vorrangige_leistung_kriterien") %>'>
                              <cit:conditional test="!assistants.request.isValid('vorrangige_leistung_kriterien')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="vorrangige_leistung_kriterien"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="vorrangige_leistung_kriterien" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="vorrangige_leistung_kriterien" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel required">
                                    <span id="d0e30_label">vorrangige_leistung_kriterien:<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer" role="group" aria-labelledby='d0e30_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "vorrangige_leistung_kriterien") %>'>
                                    <cit:inputSelectMultiple name="vorrangige_leistung_kriterien" required="true">
                                       <cit:option value="xixii">Vorrangige Leistungen nach SGB XI/XII liegen vor/werden vermutet</cit:option>
                                       <cit:option value="v">Vorrangige Leistungen nach SGB V liegen vor/werden vermutet</cit:option>
                                       <cit:option value="plegeb">Erheblicher Pflegebedarf von mindestens 6 Monaten und Pflegeumfang von mindestens 12,5 Punkten laut MDK-Gutachten liegen vor</cit:option>
                                       <cit:option value="aerztvero">Ärztliche Verordnung für aktuellen Zeitraum liegt vor</cit:option>
                                       <cit:option value="khentlber">Krankenhausentlassungsbericht mit Hinweis auf medizinische Behandlungspflege liegt vor</cit:option>
                                       <cit:option value="rehagut">Reha-Gutachten liegt vor</cit:option>
                                       <cit:option value="mkiapgut">MDK Gutachten und/oder IAP Gutachten mit Hinweis auf behandlungspflegerische Leistungen liegt vor</cit:option>
                                       <cit:option value="entkhlei">Hilfesuchende/r wurde aus dem Krankenhaus entlassen und begehrt (höhere) Leistungen</cit:option>
                                    </cit:inputSelectMultiple>
                                 </div>
                              </div>
                           </section>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d8e2 = !isVisited(session, "vorrangige_leistungen"); %><li class='present<%= unvisited_d8e2 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Kriterien</span>
                                       <span class="labelicon" title='<%= unvisited_d8e2 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d8e2 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d8e4 = !isVisited(session, "vorrangige_leistung_sgb_xi"); %><li class='future<%= unvisited_d8e4 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vorrangige Leistungen -SGB XI</span>
                                       <span class="labelicon" title='<%= unvisited_d8e4 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d8e4 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                                 <ul class="collapsed"><% final boolean unvisited_d8e7 = false; %><li class='future<%= unvisited_d8e7 ? " unvisited" : "" %>'>
                                       <span class="item">
                                          <span class="label">
                                             <span class="labeltext">Vorrangige Leistungen - SGB XI</span>
                                             <span class="labelicon" title='<%= unvisited_d8e7 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                                <span class="accessibility"><%= unvisited_d8e7 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                                 <cit:inputSubmit type="save" class="submit-save prio3 icon-save" tabindex="0" value="Unterbrechen..." title="Klicken Sie hier, wenn Sie den Vorgang jetzt unterbrechen und später fortsetzen möchten."/>
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