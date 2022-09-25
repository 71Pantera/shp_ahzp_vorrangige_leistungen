<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("vorrangige_leistungen_sgbxi"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("vorrangige_leistungen_sgbxi"); %>

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
            <cit:edit scope="vorrangige_leistungen_sgbxi" href="vorrangige_leistungen_sgbxi/dialog.jsp"/>
         </cit:flow>
         <cit:page-validation id="d0e66-multiplicity" test="!(submit=='forward'||submit=='finish')||(length(myForm['vorrangige_leistungen_sgbxi'])&gt;=1)"/>
      </cit:control>
   </head>
   <body id="vorrangige_leistungen_sgbxi">
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
               <ul class="icons"><% final boolean unvisited_d11e2 = !isVisited(session, "vorrangige_leistungen"); %><li class='past<%= unvisited_d11e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vorrangige_leistungen") != null) { %><span class="item clickable" data-submit-value="resync.vorrangige_leistungen">
                        <a href="" class="label">
                           <span class="labeltext">Kriterien</span>
                           <span class="labelicon" title='<%= unvisited_d11e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d11e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Kriterien</span>
                           <span class="labelicon" title='<%= unvisited_d11e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d11e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d11e4 = !isVisited(session, "vorrangige_leistungen_sgbxi"); %><li class='present<%= unvisited_d11e4 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vorrangige Leistungen -SGB XI</span>
                           <span class="labelicon" title='<%= unvisited_d11e4 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d11e4 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                     <ul class="collapsed"><% final boolean unvisited_d11e7 = false; %><li class='future<%= unvisited_d11e7 ? " unvisited" : "" %>'>
                           <span class="item">
                              <span class="label">
                                 <span class="labeltext">Vorrangige Leistungen - SGB XI</span>
                                 <span class="labelicon" title='<%= unvisited_d11e7 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                    <span class="accessibility"><%= unvisited_d11e7 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                  <section id="content" class=" wide">
                     <cit:form beanName="myForm">
                        <div class="wizard-body">
                           <h2 id="title">Vorrangige Leistungen nach dem SGB XI</h2>
                           <cit:validationMessage for="d0e66-multiplicity">
                              <p class="invalidInfo">
                                 <strong>Bitte erstellen Sie hier mindestens einen Eintrag.</strong>
                              </p>
                           </cit:validationMessage>
                           <header class="intro"><h3><cit:display errorReplacement="―" expression="My.undefinedReplacement(getApplicantName())"/></h3><br/><br/> <ul><li><a title="Lorum ipsum dolor sit amet" href="#nowhere">Lorem</a></li><li><a title="Aliquam tincidunt mauris eu risus" href="#nowhere">Aliquam</a></li><li><a title="Morbi in sem quis dui placerat ornare" href="#nowhere">Morbi</a></li><li><a title="Praesent dapibus, neque id cursus faucibus" href="#nowhere">Praesent</a></li><li><a title="Pellentesque fermentum dolor" href="#nowhere">Pellentesque</a></li></ul></header>
                           <cit:conditional test="length(myForm['vorrangige_leistungen_sgbxi'])&gt;0">
                              <p class="hint">Folgende Einträge sind vorhanden:</p>
                           </cit:conditional>
                           <section class="block loop wide">
                              <cit:conditional test="length(myForm['vorrangige_leistungen_sgbxi'])==0">
                                 <p class="hint">Keine Einträge vorhanden. Klicken Sie auf <em class="button-name icon-plus-sign">vorrangige_leistungen_sgbxi hinzufügen</em>, um den ersten Eintrag hinzuzufügen:</p>
                              </cit:conditional><% int no = 0; %><% int count = (Integer) de.cit.jsp.script.ScriptContext.getSessionInstance(session).eval("length(myForm['vorrangige_leistungen_sgbxi'])", "a *.jsp file"); %><div class="table_container">
                                 <table>
                                    <cit:conditional test="length(myForm['vorrangige_leistungen_sgbxi'])&gt;0">
                                       <thead>
                                          <tr>
                                             <th class="t-1" scope="col" rowspan="1" colspan="1">Pos.</th>
                                             <th class="t-2" scope="col" rowspan="1" colspan="1">Berechnetes Feld</th>
                                             <th rowspan="1" colspan="1" class="t-actions">
                                                <span class="accessibility">Aktionen</span>
                                             </th>
                                          </tr>
                                       </thead>
                                    </cit:conditional>
                                    <tbody>
                                       <cit:loop id="d0e66" count="length(myForm['vorrangige_leistungen_sgbxi'])" scope="vorrangige_leistungen_sgbxi"><% ++no; %><tr class='<%= ( no % 2 == 0 ? "t-even" : "t-odd" ) + ( no == 1 ? " t-first" : "" ) + ( no == count ? " t-last" : "" ) %>'>
                                             <td class="t-1" rowspan="1" colspan="1"><%= new java.text.DecimalFormat("#'.'").format(no) %></td>
                                             <td class="t-2" rowspan="1" colspan="1">
                                                <cit:display expression="My.undefinedReplacement(myForm.berechnetes_feld)" errorReplacement="―"/>
                                             </td>
                                             <td class="t-actions" rowspan="1" colspan="1">
                                                <cit:loopSubmit type="edit" class="submit-edit icon-pencil" value="Bearbeiten" title="Öffnet das Unterformular zum Bearbeiten dieses Eintrags."/>
                                                <cit:loopSubmit type="delete" class="submit-delete icon-trash" value="Löschen" title="Löscht diesen Eintrag. (Kann nicht rückgängig gemacht werden.)"/>
                                             </td>
                                          </tr>
                                       </cit:loop>
                                    </tbody>
                                 </table>
                              </div>
                              <cit:loopSubmit loopref="d0e66" type="add" class="submit-add icon-plus-sign" value="vorrangige_leistungen_sgbxi hinzufügen" title="Öffnet das Unterformular zum Hinzufügen eines neuen Eintrags."/>
                           </section>
                           <p class="hint">Wenn Sie mit diesem Abschnitt fertig sind, klicken Sie auf <em class="button-name icon-arrow-right">Weiter</em>.</p>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d15e2 = !isVisited(session, "vorrangige_leistungen"); %><li class='past<%= unvisited_d15e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vorrangige_leistungen") != null) { %><span class="item clickable" data-submit-value="resync.vorrangige_leistungen">
                                    <a href="" class="label">
                                       <span class="labeltext">Kriterien</span>
                                       <span class="labelicon" title='<%= unvisited_d15e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d15e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Kriterien</span>
                                       <span class="labelicon" title='<%= unvisited_d15e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d15e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d15e4 = !isVisited(session, "vorrangige_leistungen_sgbxi"); %><li class='present<%= unvisited_d15e4 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vorrangige Leistungen -SGB XI</span>
                                       <span class="labelicon" title='<%= unvisited_d15e4 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d15e4 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                                 <ul class="collapsed"><% final boolean unvisited_d15e7 = false; %><li class='future<%= unvisited_d15e7 ? " unvisited" : "" %>'>
                                       <span class="item">
                                          <span class="label">
                                             <span class="labeltext">Vorrangige Leistungen - SGB XI</span>
                                             <span class="labelicon" title='<%= unvisited_d15e7 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                                <span class="accessibility"><%= unvisited_d15e7 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                                 <cit:inputSubmit type="save" class="submit-save prio3 icon-save" tabindex="0" value="Unterbrechen..."/>
                              </div>
                              <div class="button">
                                 <cit:inputSubmit type="back" class="submit-back prio2 icon-arrow-left" tabindex="0" value="Zurück"/>
                              </div>
                              <div class="button">
                                 <cit:inputSubmit class="submit-forward" tabindex="0" value="Weiter" type="forward" enabled="js:{true&amp;&amp;(length(myForm['vorrangige_leistungen_sgbxi'])!=0)}"/>
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