/* user and group to drop privileges to */
static const char *user = "hooxoo";
static const char *group = "nobody"; // use "nobody" for arch

static const char *colorname[NUMCOLS] = {
    [INIT] = "#1a1b26",   /* after initialization */
    [INPUT] = "#414868",  /* during input */
    [FAILED] = "#f7768e", /* wrong password */
};

/* lock screen opacity */
static const float alpha = 0.7;

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* time in seconds to cancel lock with mouse movement */
static const int timetocancel = 10;
