DEBUG="TRUE"
VERBOSE="TRUE"
ACCOUNT=gsd-hpcs

MACHINE=HERA
SCHED=slurm

EXPT_BASEDIR="/scratch2/BMC/gsd-hpcs/Daniel.Abdi/ufs-srweather-app/test"
EXPT_SUBDIR="config_1"

VERBOSE="TRUE"

RUN_ENVIR="nco"
PREEXISTING_DIR_METHOD="rename"

# Get external model files
USE_USER_STAGED_EXTRN_FILES="TRUE"
EXTRN_MDL_SOURCE_BASEDIR_ICS="/scratch2/BMC/wrfruc/cholt/data/gfs"
EXTRN_MDL_FILES_ICS=( "gfs.t18z.pgrb2.0p25.f000" )
EXTRN_MDL_SOURCE_BASEDIR_LBCS="/scratch2/BMC/wrfruc/cholt/data/gfs"
EXTRN_MDL_FILES_LBCS=( \
  "gfs.t18z.pgrb2.0p25.f006" \
  "gfs.t18z.pgrb2.0p25.f012" \
)
RUN="RRFS_CONUS"

PREDEF_GRID_NAME="RRFS_CONUS_3km"

QUILTING="TRUE"
CCPP_PHYS_SUITE="FV3_GSD_SAR"
FCST_LEN_HRS="18"
LBC_SPEC_INTVL_HRS="6"

HALO_BLEND=10

WTIME_RUN_FCST="06:45:00"

DATE_FIRST_CYCL="20210223"
DATE_LAST_CYCL="20210223"
CYCL_HRS=( "18" )


EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"
FV3GFS_FILE_FMT_ICS="grib2"
FV3GFS_FILE_FMT_LBCS="grib2"

envir="para"

NET="RRFS_CONUS"

STMP="/lfs4/BMC/nrtrr/NCO_dirs/stmp"
PTMP="/lfs4/BMC/nrtrr/NCO_dirs/ptmp"

STMP="/scratch2/BMC/gsd-hpcs/Daniel.Abdi/rrfs/stmp"
PTMP="/scratch2/BMC/gsd-hpcs/Daniel.Abdi/rrfs/ptmp"
