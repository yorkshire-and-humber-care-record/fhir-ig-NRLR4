var fs = require('fs');
var path = require('path')
const jsdom = require("jsdom");
const { JSDOM } = jsdom;

exports.ensureDirectoryExistence = function (filePath) {
  var dirname = path.dirname(filePath);
  if (fs.existsSync(dirname)) {
    return true;
  }
  this.ensureDirectoryExistence(dirname);
  fs.mkdirSync(dirname);
}

exports.getAllFiles = function(dirPath, arrayOfFiles) {
  result = buildFileArray (dirPath);
  //console.log(result);
  return result;
};

function buildFileArray(dirPath, arrayOfFiles) {

  files = fs.readdirSync(dirPath);
  arrayOfFiles = arrayOfFiles || [];

  files.forEach(function(file) {
    if (fs.statSync(dirPath + "\\" + file).isDirectory()) {
      arrayOfFiles = buildFileArray(dirPath + "\\" + file, arrayOfFiles)
    } else {
      arrayOfFiles.push(path.join(dirPath, "\\", file))
    }
  });

  return arrayOfFiles
};

exports.updatePublishBox = function(filePath) {
  var fileData = fs.readFileSync(filePath,'utf8');
  const domfileData = new JSDOM(fileData);

  if(domfileData.window.document.getElementById("publish-box")){
   domfileData.window.document.getElementById("publish-box").innerHTML = "Interweave Implementation Guide - Local Development build (v0.1.0) built by the FHIR (HL7® FHIR® Standard) Build Tools. See the <a href='../artifacts.html'>STU3 profiles here.</a>"
  }
   return domfileData.window.document.documentElement.outerHTML;

 };