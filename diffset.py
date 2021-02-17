# hideAndSeek2021/diffset.py -- set of simulation properties to test after
# a simulation run. See crunchlog.py

# Map the property to be checked against its (TOLERANCE, RAWTOLERANCE),
# where TOLERANCE is a percatage as a fraction, and RAWTOLERANCE
# is the minimum difference between the simulation value and the
# reference value for the property required to trigger an error.
DIFFMAP = {
    'MIN_IamHiding'	:	(.20, 10),
    'MEAN_IamHiding'	:	(.20, 10),
    'MAX_IamHiding'	:	(.20, 10),
    'MIN_IamSeeking'	:	(.20, 10),
    'MEAN_IamSeeking'	:	(.20, 10),
    'MAX_IamSeeking'	:	(.20, 10),
}

# Make a separate plot for each crunch file.
PLOTLIST = (
    'MIN_IamHiding',
    'MEAN_IamHiding',
    'MAX_IamHiding',
    'MIN_IamSeeking',
    'MEAN_IamSeeking',
    'MAX_IamSeeking',
)
