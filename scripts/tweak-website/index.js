#!/usr/bin/env node

//*******************************************************************
//** This script tweaks the website, 
//   Specifically to hide all the IPS artefacts from the contents so they don't clutter it up
//*******************************************************************

// (For useful help, see https://www.w3schools.com/js/js_htmldom_collections.asp)

console.log( "Beginning website tweaks" );

var fs = require('fs');
var path = require('path');
const jsdom = require("jsdom");
var fileHelpers = require('./FileHelpers');
const { JSDOM } = jsdom;

var dirOutput = path.resolve(__dirname, '..\\..') + '\\output';
//console.log(dirOutput);
var fileArtifacts = dirOutput + '\\artifacts.html';
var fileToc = dirOutput + '\\toc.html';

///////////////////////////////////////////////////////////////////////////////
//Read in the artifacts file
var fileArtifactsData = fs.readFileSync(fileArtifacts,'utf8');
const domArtifacts = new JSDOM(fileArtifactsData);

// Hide any table rows that refer to IPS
artifactsTrElements = domArtifacts.window.document.getElementsByTagName("tr");
for (let i = 0; i < artifactsTrElements.length; i++) {
  
  if(artifactsTrElements[i].innerHTML.includes("IPS")) {
    //console.log(artifactsTrElements[i].innerHTML);
    artifactsTrElements[i].style.display = "none";
  } // If 

} //For tr elements

// Re-write the updated artifacts file
fs.writeFileSync(fileArtifacts, domArtifacts.window.document.documentElement.outerHTML, 'utf8');


///////////////////////////////////////////////////////////////////////////////
//Read in the toc file
var fileTocData = fs.readFileSync(fileToc,'utf8');
const domToc = new JSDOM(fileTocData);

// Hide any table rows that refer to IPS
tocTrElements = domToc.window.document.getElementsByTagName("tr");
for (let i = 0; i < tocTrElements.length; i++) {

  if(tocTrElements[i].innerHTML.includes("IPS")) {
    //console.log(tocTrElements[i].innerHTML);
    tocTrElements[i].style.display = "none";
  } // If IPS


} //For tr elements

// Re-write the updated ToC file
fs.writeFileSync(fileToc, domToc.window.document.documentElement.outerHTML, 'utf8');