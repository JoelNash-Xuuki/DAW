#include <string>
#include <stdio.h>
#include "csound.hpp"
#include <iostream>
#include <string>
#include <stdlib.h>
#include <fstream>
#include <sstream>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

using namespace std;

#ifndef SD_H
#define SD_H
class AudioEngine{
  private:
  	Csound* csound;
	int sampleRate;
  public:
	AudioEngine(int sampleRate, int argc, char **argv);
	void getControls(int argc, char **argv);
	void runEngine();
	void buildEngine(bool playBackType);
	string readFileContentsIntoString(const string& path);
};

class ProjectFileManager{
  private:
    string projectName;
    string fileName;
	ostringstream configFilePath;
	string configExten= ".conf";
	ostringstream audioEngineTemplateFilePath;
	string configFile;
    char sampleRate[9];
	int sr;
    char ch[1000];
	int i= 0;

  public:
    ProjectFileManager(string projectName);
    string getFile(string filePath, string fileName, string extension);
	void createDir();
	char* readfileIntoArray(string fileName);
	void readForConfigFileOptions();
	int getSampleRate();
	void getConfigFileOptions(char* fileChars);
	void readConfigFile();
};

class DAW{
  public:
	bool wasRun; 
  public:
	DAW(string name);
	void testMethod();
};
# endif

