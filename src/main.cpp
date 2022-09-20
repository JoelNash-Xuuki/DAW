#include "daw.hpp"

int main(int argc, char **argv){
  
  //applyUserControls();
  string projectName= argv[1];
  ProjectFileManager* pfm = new ProjectFileManager(projectName);
 
  AudioEngine * ae= new AudioEngine(pfm->getSampleRate(),argc,argv);
  ae->runEngine();

//  cout << "Program ended." << endl;  
  return 0;
}
