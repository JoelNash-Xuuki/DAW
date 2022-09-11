#include <stdio.h>
#include "csound.hpp"
#include <iostream>
#include <fstream>

using namespace std;
string readFileContentsIntoString(const string& path);

int main(int argc, char **argv){
  const char* recsession= argv[1];
  const char* samplerate= argv[2];
  const char* csoundsource= argv[5];
  const char* oO= argv[6];

  string csndsrc(csoundsource);
  string sr(samplerate);
  const char* rfile= argv[3];
  string rf(rfile);
  const char* wfile= argv[4];
  string wf(wfile);
  char newFile [250];

  FILE* file;
  file = fopen (csoundsource, "w");
  
  string contents= readFileContentsIntoString(recsession);
  fprintf(file, contents.c_str(),sr.c_str(), wf.c_str(), rf.c_str(), rf.c_str());    
  fclose(file);

  Csound* csound = new Csound();
  csound->SetOption("--realtime"); 
  csound->SetOption(oO);
  csound->SetOption("-iadc");
  csound->SetOption("-B512");
  csound->SetOption("-b256");
  csound->SetOption("-+rtaudio=jack");

  csound->Compile(csoundsource);

  csound->Start();
  csound->Perform();	
  delete csound;
  
  return 0
}

string readFileContentsIntoString(const string& path) {
  ifstream input_file(path);
  if (!input_file.is_open()) {
    cerr << "Could not open the file - '"
      << path << "'" << endl;
   exit(EXIT_FAILURE);
  }
  return string((istreambuf_iterator<char>(input_file)), istreambuf_iterator<char>());
}



