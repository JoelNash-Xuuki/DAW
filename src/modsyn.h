#define SYNMOD_CHARS (128)
#define MAXMODS (256)

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

void initialize_globals( OSCMOD *oscs, int osc_count, 
					     NOISEMOD *noises, int noise_count, 
						 NOISEMOD *sahs, int sah_count,
			 			 VCFMOD *vcfs, int vcf_count);

