/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1; /* -b  option; if 0, dmenu appears at bottom */

/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {"FantasqueSansMono Nerd Font:size=10"};
static const char *prompt = NULL; /* -p  option; prompt to the left of input field */

static const char *colors[][2] = {
    /*               fg         bg       */
    [SchemeNorm] = {"#b4befe", "#1E1E2E"},
    [SchemeSel] = {"#f38ba8", "#1E1E2E"},
    [SchemeOut] = {"#000000", "#00ffff"},
    [SchemeBorder] = {"#b4befe", "#1e1e2e"},
    [SchemeSelHighlight] = {"#eba0ac", "#313244"},
    [SchemeNormHighlight] = {"#fab387", "#1e1e2e"},
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
