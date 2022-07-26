#define SYNMOD_CHARS (128)
#define MAXMODS (256)
#include <cstdio>
#include <cstdlib>
#include <string>
#include <cstring>
using namespace std;

typedef struct {
  char no[SYNMOD_CHARS];
} INSTR;

typedef struct {
  char frequency[SYNMOD_CHARS];
  char sig_out[SYNMOD_CHARS];
  char sig_am[SYNMOD_CHARS];
  char sig_fm[SYNMOD_CHARS];
  char waveform[SYNMOD_CHARS];
  char omin[SYNMOD_CHARS];
  char omax[SYNMOD_CHARS];
} OSCMOD;

typedef struct {
  char outvar[SYNMOD_CHARS];
  char amplitude[SYNMOD_CHARS];
} MIXOUT;

typedef struct {
  char speed[SYNMOD_CHARS];
  char sig_out[SYNMOD_CHARS];
  char seed[SYNMOD_CHARS];
  char omin[SYNMOD_CHARS];
  char omax[SYNMOD_CHARS];
} NOISEMOD;

typedef struct {
  char sig_in[SYNMOD_CHARS];
  char sig_out[SYNMOD_CHARS];
  char cutoff[SYNMOD_CHARS];
  char resonance[SYNMOD_CHARS];
} VCFMOD;

typedef struct {
  char amp[SYNMOD_CHARS];
  char sig_out[SYNMOD_CHARS];
} ENVMOD;

class PrinterReader{
  private:
    MIXOUT *mixes;
    OSCMOD *oscs;
    NOISEMOD *noises;
    NOISEMOD *sahs;
    VCFMOD *vcfs;
    ENVMOD *envs;

    char modname[64];
    int mix_count= 0;
    int osc_count= 0;
    int noise_count= 0;
    int sah_count= 0;
    int vcf_count= 0;
    int env_count= 0;
    int i;

  public: 
    PrinterReader(){
      mixes= (MIXOUT *) malloc(MAXMODS * sizeof(MIXOUT));
      oscs= (OSCMOD *) malloc(MAXMODS * sizeof(OSCMOD));
      noises= (NOISEMOD *) malloc(MAXMODS * sizeof(NOISEMOD));
      sahs= (NOISEMOD *) malloc(MAXMODS * sizeof(NOISEMOD));
      vcfs= (VCFMOD *) malloc(MAXMODS * sizeof(VCFMOD));
      envs= (ENVMOD *) malloc(MAXMODS * sizeof(ENVMOD));
	}

	void initialize_globals()
						//OSCMOD *oscs, int osc_count, 
  						//NOISEMOD *noises, int noise_count, 
  						//NOISEMOD *sahs, int sah_count,
  			 			//VCFMOD *vcfs, int vcf_count)
												{
      int i;
      
      for(i = 0; i < osc_count; i++){
        printf("%s init 0.0\n", oscs[i].sig_out);
      }
      for(i = 0; i < noise_count; i++){
        printf("%s init 0.0\n", noises[i].sig_out);
      }
      for(i = 0; i < sah_count; i++){
        printf("%s init 0.0\n", sahs[i].sig_out);
      }
      for( i = 0; i < vcf_count; i++){
        printf("%s init 0.0\n", vcfs[i].sig_out);
      }
    }

	void readPatch(){
	  string* mod;
      //while(fscanf("%s", modname ) != EOF){
      //     if(! strcmp(modname, "OSC")){
	  //       printf("TEST");
      //       //read_osc(oscs, osc_count++);
      //     }
      //     //else if(! strcmp(modname, "MIXOUT")){
      //     //  read_mix(mixes, mix_count++);
      //     //}
      //     //else if(! strcmp(modname, "NOISE")){
      //     //  read_noise(noises, noise_count++);
      //     //}
      //     //else if(! strcmp(modname, "SAH")){
      //     //  read_noise(sahs, sah_count++);
      //     //}
      //     //else if(! strcmp(modname, "VCF")){
      //     //  read_vcf(vcfs, vcf_count++);
      //     //}
      //     //
      //     //else if(! strcmp(modname, "ENV")){
      //     //  read_env(envs, env_count++);
      //     //} else {
      //     //  fprintf(stderr,"%s is an unknown module\n", modname);
      //     //}
      //}
	}

    void print_header(void){
      printf("<CsoundSynthesizer>\n");
      printf("<CsOptions>\n");
      printf("-F test.mid\n");
      printf("</CsOptions>\n");
      printf("sr = 44100\n");
      printf("kr = 4410\n");
      printf("ksmps = 10\n");
      printf("nchnls = 1\n");
      printf("<CsInstruments>\n\n");
    }

    void print_score(){
      printf("</CsInstruments>\n");
      printf("<CsScore>\n\n");
      printf("f1 0 8192 10 1 ; sine\n");
      printf("f2 0 8192 10 1 0 .111 0 .04 0 .02 0 ; triangle\n");
      printf("f3 0 8192 10 1 .5 .333 .25 .2 .166 .142 .125 ; sawtooth\n");
      printf("f4 0 8192 10 1 0 .333 0 .2 0 .142 0 .111; square\n");
      printf("f5 0 8192 10 1 1 1 1 1 1 1 1 1 1 1 1 1; pulse\n\n");
      printf("f0 40\n");
      printf("</CsScore>\n");
      printf("</CsoundSynthesizer>\n");
    }
};

void read_instr(INSTR *instr, int count);
void print_instr(INSTR instr);

void read_osc(OSCMOD *oscs, int count);
void print_osc(OSCMOD osc);

void read_mix(MIXOUT *mix, int count);
void print_mix(MIXOUT mix);

void read_noise(NOISEMOD *unit, int count);
void print_noise(NOISEMOD noise);
void print_sah(NOISEMOD noise);

void read_vcf(VCFMOD *unit, int count);
void print_vcf(VCFMOD vcf);

void read_env(ENVMOD *oscs, int count);
void print_env(ENVMOD osc);

void print_header(void);
void print_score();



