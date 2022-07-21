/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1; /* -b  option; if 0, dmenu appears at bottom */

/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {"Ellograph Mono:size=8"};
static const char *prompt = NULL; /* -p  option; prompt to the left of input field */

static const char *colors[][2] = {
    /*               fg         bg       */
    [SchemeNorm] = {"#7aa2f7", "#1a1b26"},
    [SchemeSel] = {"#f7768e", "#1a1b26"},
    [SchemeOut] = {"#000000", "#00ffff"},
    [SchemeBorder] = {"#7aa2f7", "#1a1b26"},
    [SchemeSelHighlight] = {"#9ece6a", "#414868"},
    [SchemeNormHighlight] = {"#ff9e64", "#1a1b26"},
};

/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static unsigned int border_width = 5;
