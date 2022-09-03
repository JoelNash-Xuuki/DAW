/* Example 1 - Simple Compilation with Csound
 Author: Steven Yi <stevenyi@gmail.com> 2013.10.28
 Adapted for C++ by Rory Walsh

 Adapted to C++ by Rory Walsh 
 This example is a barebones example for creating an instance of Csound, 
 compiling a pre-existing CSD, calling Perform to run Csound to completion,
 then Stop and exit.  
*/

#include <stdio.h>
#include "csound.hpp"
#include <iostream>
#include <fstream>

using namespace std;

string readFileContentsIntoString(const string& path);

int main(int argc, char **argv){

  const char* recsession= argv[1];
  string contents= readFileContentsIntoString(recsession);
  string flagTest=	"-F /home/joel/sound-designer/src/tmp/smile.mid";
  printf(contents.c_str(), flagTest.c_str());    
  

  //const char* output= argv[2];

  //Create an instance of Csound
 // Csound* csound = new Csound();

  ///csound->SetOption(output);
  ///
  ///////compile instance of csound.
  //csound->Compile(recsession);

  ///////prepare Csound for performance
  ///csound->Start();
  /////
  ///////perform entire score
  //csound->Perform();	
  //
  ////free Csound object
  //delete csound;
  
  return 0;
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



