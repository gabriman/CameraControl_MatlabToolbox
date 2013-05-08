function [ mapObj ] = readConfFile( programFolder )
%READCONFFILE Summary of this function goes here
%   Detailed explanation goes here

% get the xpath mechanism into the workspace
import javax.xml.xpath.*
factory = XPathFactory.newInstance;
xpath = factory.newXPath;

fullPath = fullfile(programFolder,'cfg/config.xml');
docNode = xmlread(fullPath);

% compile and evaluate the XPath Expression
expression = xpath.compile('config/directoryIn');
directoryInNode = expression.evaluate(docNode, XPathConstants.NODE);
directoryIn = directoryInNode.getTextContent;

expression = xpath.compile('config/fileIn');
fileInNode = expression.evaluate(docNode, XPathConstants.NODE);
fileIn = fileInNode.getTextContent;

expression = xpath.compile('config/directoryOut');
directoryOutNode = expression.evaluate(docNode, XPathConstants.NODE);
directoryOut = directoryOutNode.getTextContent;

expression = xpath.compile('config/fileOut');
fileOutNode = expression.evaluate(docNode, XPathConstants.NODE);
fileOut = fileOutNode.getTextContent;

expression = xpath.compile('config/executable');
executableNode = expression.evaluate(docNode, XPathConstants.NODE);
executable = executableNode.getTextContent;

keySet   = {'programFolder','directoryIn','fileIn','directoryOut','fileOut','executable'};
valueSet = {programFolder,directoryIn,fileIn,directoryOut,fileOut,executable};
mapObj = containers.Map(keySet,valueSet);

end