#include <stdio.h>
#include "csound.hpp"
#include "daw.hpp"
#include <iostream>
#include <string>
#include <stdlib.h>
#include <fstream>
#include <sstream>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

using namespace std;
string readFileContentsIntoString(const string& path);
FILE *createFile(string filePath, string fileName, string extension);
void getUserControls(int argc, char **argv);
void applyUserControls();

void print_header(FILE* file);
void createDir(string fileName);
string createConfigFile();
void readFile(string file);

const char* sampleRate;
bool play, rec;
string configFile;
class Config;

// current gets config options
// and will build the audioEngine
ProjectFileManager::ProjectFileManager(string projectName){
  this->projectName= projectName;
  this->fileName= this->projectName;
  readConfigFile();
}

void ProjectFileManager::readConfigFile(){
  configFilePath << getenv("HOME") << "/DAW/projects/" << this->projectName << "/";
  this->configFile= getFile(configFilePath.str().c_str(), this->fileName,this->configExten);
  getConfigFileOptions(this->readfileIntoArray(this->configFile));
}

void ProjectFileManager::getConfigFileOptions(char* fileChars){
  for(int j= 0; j<strlen(fileChars); j++){
    switch(fileChars[j]){
  	  case 's': {
         if(fileChars[j+1] == 'r'){
           strncpy(sampleRate,&fileChars[2],5);
	       sscanf(sampleRate, "%d", &sr);
         }
  	     break;
      }
    }
  }
}

int ProjectFileManager::getSampleRate(){
  return this->sr;
}

char* ProjectFileManager::readfileIntoArray(string fileName){
  ifstream file(configFile);
  if(file.is_open()){
    while(!file.eof()){
      file >> this->ch[i];
      i++;
    } 
  }
  return this->ch;
}

string ProjectFileManager::getFile(string filePath, string fileName, string extension){
  ostringstream declareFile;
  declareFile << filePath << fileName << extension;
  return declareFile.str().c_str();
}

void ProjectFileManager::createDir(){
  ostringstream declareFile;
  declareFile << getenv("HOME") << "/DAW/projects/" << fileName;
  mkdir(declareFile.str().c_str(), 0700);
}

//void FileManager::readFile(){
//  //ifstream infile(file);
//  //string line;
//  //while (getline(infile, line)){
//  //  cout << line << endl;
//  //} 
//  //cout << "Test" << endl;
//  //cout << infile.rdbuf() << endl;
//}
//class FileManager{
//  public:
	  //
//	
//
//	
//
//    
//};

AudioEngine::AudioEngine(int sampleRate, int argc, char **argv){
  this->sampleRate;
  getControls(argc,argv);
}

string AudioEngine::readFileContentsIntoString(const string& path) {
  ifstream input_file(path);
  if (!input_file.is_open()) {
    cerr << "Could not open the file - '"
      << path << "'" << endl;
   exit(EXIT_FAILURE);
  }
  return string((istreambuf_iterator<char>(input_file)), istreambuf_iterator<char>());
}

void AudioEngine::buildEngine(bool playBackType){
  //string contents= readFileContentsIntoString(audioEngineTemplate.str();
  //fprintf(file, readFileContentsIntoString(instrNScoTemplate).c_str(), sr.c_str());    
  //fprintf(file, contents.c_str(), sr.c_str());
  //fclose(file);

}

void AudioEngine::runEngine(){
  csound= new Csound();
  csound->SetOption("--realtime"); 
  csound->SetOption("-odac");
 // csound->SetOption("-iadc");
  csound->SetOption("-B512");
  csound->SetOption("-b256");
//  csound->SetOption("-+rtaudio=jack");
  csound->Compile("smile.csd");
  csound->Start();
  csound->Perform();	
  delete csound;
}

void AudioEngine::getControls(int argc, char **argv){
  for(int n= 0; n < argc; n++){
    switch(argv[n][1]){
      case 'r':
	    rec= true;
        break;
      case 'p':{
  	    play= true;
	    cout << "Playing..." << endl;
	  }
      break;
    }
  }
}

//int main(int argc, char **argv){
  //getUserControls(argc,argv);
  //FileManager * pfm = new FileManager(proj);
  //AudioEngine * ae= new AudioEngine(44100);
  //applyUserControls();
  
  //const char* instrNScoTemplate;
  ////get project name

  //

  //if(argc < 2 || argv[2][0] != '-'){
  //  cout << "usage: " << argv[0] << 
  //  " is currently uavailiable." << endl; 
  //  return -1;
  //}

  /* read/store the user flags and options */

  //%const char* recsession= argv[1]; to becom  csoundsrc
    
  //%const char* csoundsource= argv[5];
  //%const char* oO= argv[6];

  //string csndsrc(csoundSource);

  //convert to const char* to string
  //string sr(sampleRate);

  //%const char* rfile= argv[3];
  //%string rf(rfile);
  //%const char* wfile= argv[4];
  //%string wf(wfile);
  //%char newFile [250];

  //cout << "Test" << endl;

  //create csd file.
  //createFile("/home/joel/DAW/src/", proj, ".csd");
  
  //string contents= readFileContentsIntoString(audioEngineTemplate.str());
  //fprintf(file, readFileContentsIntoString(instrNScoTemplate).c_str(), sr.c_str());    
  //fprintf(file, contents.c_str(), sr.c_str());
  //fclose(file);

  ////csound->SetOption("--realtime"); 
  ////csound->SetOption(oO);
  ////csound->SetOption("-iadc");
  ////csound->SetOption("-B512");
  ////csound->SetOption("-b256");
  ////csound->SetOption("-+rtaudio=jack");

  //csound->Compile(instrNSco);

  //csound->Start();
  //csound->Perform();	
  //delete csound;
//  cout << "Program ended." << endl;  
//  return 0;
//}
//
//void getUserControls(int argc, char **argv){
//  proj= argv[1];
//  for(int n= 0; n < argc; n++){
//    switch(argv[n][1]){
//  	  case 's': {
//        sampleRate= argv[n+1];
//  	    cout << "sample rate: " << sampleRate << endl;
//  	    break;
//      }
//      case 'r':
//		rec= true;
//  	    break;
//      case 'o': {
//    	cout << "Option: " << argv[n+1] << endl;
//    	//csound->SetOption(argv[n+1]);
//    	n++;
//        break;
//      }
//      case 'p':{
//		play= true;
//    	break;
//      }
//    }
//  }
//}
//
//void applyUserControls(){
//  cout << "Project: " << proj << endl;
//
//  if(play == true && rec != true){
////	createAudioEngineTemplate();
//    cout << "Playing... " << endl;
//  }
//  else if (play != true && rec == true){
// //   createAudioEngineTemplate();
//    cout << "Recording... " << endl;
//  }
//}
//
//string createConfigFile(){
//  ostringstream declareFile;
//  declareFile << getenv("HOME") << "/DAW/projects/" << proj << "/";
//  return declareFile.str().c_str();
////  fprintf(createFile(declareFile.str().c_str(),proj,".config"), 
////		  readFileContentsIntoString(instrNScoTemplate).c_str(), sr.c_str());
//}
//
//void print_header(FILE* file){
//  string sr= "44100";
//  fprintf(file, "<CsoundSynthesizer>\n");
//  fprintf(file, "<CsOptions>\n");
////  fprintf(file, "-F test.mid\n");
//  fprintf(file, "</CsOptions>\n");
//  fprintf(file, "sr = %s\n", sr.c_str());
//  //fprintf(file, "kr = 4410\n");
//  //fprintf(file, "ksmps = 10\n");
//  //fprintf(file, "nchnls = 1\n");
//  //fprintf(file, "<CsInstruments>\n\n");
//}
//

//
//class Config{
//
//  public:
//    Config();
//
//};
