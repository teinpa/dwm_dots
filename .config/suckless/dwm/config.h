/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx = 5; /* border pixel of windows */
static const unsigned int snap = 32;    /* snap pixel */
static const int swallowfloating =
    0; /* 1 means swallow floating windows by default */
static const unsigned int gappih = 10; /* horiz inner gap between windows */
static const unsigned int gappiv = 10; /* vert inner gap between windows */
static const unsigned int gappoh =
    10; /* horiz outer gap between windows and screen edge */
static const unsigned int gappov =
    10; /* vert outer gap between windows and screen edge */
static const int smartgaps_fact =
    1; /* gap factor when there is only one client; 0 = no gaps, 3 = 3x outer
          gaps */
static const int showbar = 1; /* 0 means no bar */
static const int topbar = 1;  /* 0 means bottom bar */
static const int vertpad = 0; /* vertical padding of bar */
static const int sidepad = 3; /* horizontal padding of bar */
/* Status is to be shown on: -1 (all monitors), 0 (a specific monitor by index),
 * 'A' (active monitor) */
static const int statusmon = 'A';
static const unsigned int systrayspacing = 0; /* systray spacing */
static const int showsystray = 1;             /* 0 means no systray */

/* Indicators: see patch/bar_indicators.h for options */
static int tagindicatortype = INDICATOR_TOP_BAR;
static int tiledindicatortype = INDICATOR_NONE;
static int floatindicatortype = INDICATOR_NONE;
static const char *fonts[] = {"FantasqueSansMono Nerd Font:size=11",
                              "D2Coding:size=10", "JoyPixels:size=10"};
static const char dmenufont[] = "FantasqueSansMono Nerd Font:size=11";

static char c000000[] = "#000000"; // placeholder value

static char normfgcolor[] = "#d9e0ee";     // layout and statusbar char colors
static char normbgcolor[] = "#1e1e2e";     //
static char normbordercolor[] = "#1e1e2e"; // inactive border color
static char normfloatcolor[] = "#1E1E2E";

static char selfgcolor[] = "#c9cbff";
static char selbgcolor[] = "#1E1E2E";
static char selbordercolor[] = "#575268";
static char selfloatcolor[] = "#f2cdcd";

static char titlenormfgcolor[] = "#d9e0ee";
static char titlenormbgcolor[] = "#1E1E2E";
static char titlenormbordercolor[] = "#1E1E2E";
static char titlenormfloatcolor[] = "#c9cbff";

static char titleselfgcolor[] = "#ddb6f2";
static char titleselbgcolor[] = "#1E1E2E";
static char titleselbordercolor[] = "#1E1E2E";
static char titleselfloatcolor[] = "#ddb6f2";

static char tagsnormfgcolor[] = "#1e1e2e";
static char tagsnormbgcolor[] = "#ddb6f2";
static char tagsnormbordercolor[] = "#1e1e2e";
static char tagsnormfloatcolor[] = "#c9cbff";

static char tagsselfgcolor[] = "#ddb6f2";
static char tagsselbgcolor[] = "#1e1e2e";
static char tagsselbordercolor[] = "#1e1e2e";
static char tagsselfloatcolor[] = "#ddb6f2";

static char hidnormfgcolor[] = "#c9cBff";
static char hidselfgcolor[] = "#ddb6f2";
static char hidnormbgcolor[] = "#161320";
static char hidselbgcolor[] = "#161320";

static char urgfgcolor[] = "#1e1e2e";
static char urgbgcolor[] = "#f8bd96";
static char urgbordercolor[] = "#f28fad";
static char urgfloatcolor[] = "#f28fad";

static char *colors[][ColCount] = {
    /*                       fg                bg                border float
     */
    [SchemeNorm] = {normfgcolor, normbgcolor, normbordercolor, normfloatcolor},
    [SchemeSel] = {selfgcolor, selbgcolor, selbordercolor, selfloatcolor},
    [SchemeTitleNorm] = {titlenormfgcolor, titlenormbgcolor,
                         titlenormbordercolor, titlenormfloatcolor},
    [SchemeTitleSel] = {titleselfgcolor, titleselbgcolor, titleselbordercolor,
                        titleselfloatcolor},
    [SchemeTagsNorm] = {tagsnormfgcolor, tagsnormbgcolor, tagsnormbordercolor,
                        tagsnormfloatcolor},
    [SchemeTagsSel] = {tagsselfgcolor, tagsselbgcolor, tagsselbordercolor,
                       tagsselfloatcolor},
    [SchemeHidNorm] = {hidnormfgcolor, hidnormbgcolor, c000000, c000000},
    [SchemeHidSel] = {hidselfgcolor, hidselbgcolor, c000000, c000000},
    [SchemeUrg] = {urgfgcolor, urgbgcolor, urgbordercolor, urgfloatcolor},
};

/* Tags
 * In a traditional dwm the number of tags in use can be changed simply by
 * changing the number of strings in the tags array. This build does things a
 * bit different which has some added benefits. If you need to change the number
 * of tags here then change the NUMTAGS macro in dwm.c.
 *
 * Examples:
 *
 *  1) static char *tagicons[][NUMTAGS*2] = {
 *         [DEFAULT_TAGS] = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "A",
 * "B", "C", "D", "E", "F", "G", "H", "I" },
 *     }
 *
 *  2) static char *tagicons[][1] = {
 *         [DEFAULT_TAGS] = { "•" },
 *     }
 *
 * The first example would result in the tags on the first monitor to be 1
 * through 9, while the tags for the second monitor would be named A through I.
 * A third monitor would start again at 1 through 9 while the tags on a fourth
 * monitor would also be named A through I. Note the tags count of NUMTAGS*2 in
 * the array initialiser which defines how many tag text / icon exists in the
 * array. This can be changed to *3 to add separate icons for a third monitor.
 *
 * For the second example each tag would be represented as a bullet point. Both
 * cases work the same from a technical standpoint - the icon index is derived
 * from the tag index and the monitor index. If the icon index is is greater
 * than the number of tag icons then it will wrap around until it an icon
 * matches. Similarly if there are two tag icons then it would alternate between
 * them. This works seamlessly with alternative tags and alttagsdecoration
 * patches.
 */
static char *tagicons[][NUMTAGS] = {
    [DEFAULT_TAGS] = {"1", "2", "3", "4", "5"},
    [ALTERNATIVE_TAGS] = {"A", "B", "C", "D", "E"},
    [ALT_TAGS_DECORATION] = {"<1>", "<2>", "<3>", "<4>", "<5>"},
};

/* There are two options when it comes to per-client rules:
 *  - a typical struct table or
 *  - using the RULE macro
 *
 * A traditional struct table looks like this:
 *    // class      instance  title  wintype  tags mask  isfloating  monitor
 *    { "Gimp",     NULL,     NULL,  NULL,    1 << 4,    0,          -1 },
 *    { "Firefox",  NULL,     NULL,  NULL,    1 << 7,    0,          -1 },
 *
 * The RULE macro has the default values set for each field allowing you to only
 * specify the values that are relevant for your rule, e.g.
 *
 *    RULE(.class = "Gimp", .tags = 1 << 4)
 *    RULE(.class = "Firefox", .tags = 1 << 7)
 *
 * Refer to the Rule struct definition for the list of available fields
 * depending on the patches you enable.
 */
static const Rule rules[] = {
    /* xprop(1):
     *	WM_CLASS(STRING) = instance, class
     *	WM_NAME(STRING) = title
     *	WM_WINDOW_ROLE(STRING) = role
     *	_NET_WM_WINDOW_TYPE(ATOM) = wintype
     */
    RULE(.wintype = WTYPE "DIALOG", .isfloating = 1)
        RULE(.wintype = WTYPE "UTILITY", .isfloating = 1)
            RULE(.wintype = WTYPE "TOOLBAR", .isfloating = 1)
                RULE(.wintype = WTYPE "SPLASH", .isfloating = 1)
                    RULE(.class = "discord", .tags = 1 << 4)
                        RULE(.class = "st", .isterminal = 1)};

/* Bar rules allow you to configure what is shown where on the bar, as well as
 * introducing your own bar modules.
 *
 *    monitor:
 *      -1  show on all monitors
 *       0  show on monitor 0
 *      'A' show on active monitor (i.e. focused / selected) (or just -1 for
 * active?) bar - bar index, 0 is default, 1 is extrabar alignment - how the
 * module is aligned compared to other modules widthfunc, drawfunc, clickfunc -
 * providing bar module width, draw and click functions name - does nothing,
 * intended for visual clue and for logging / debugging
 */
static const BarRule barrules[] = {
    /* monitor   bar    alignment         widthfunc                drawfunc
       clickfunc                name */
    {-1, 0, BAR_ALIGN_LEFT, width_tags, draw_tags, click_tags, "tags"},
    {0, 0, BAR_ALIGN_RIGHT, width_systray, draw_systray, click_systray,
     "systray"},
    {-1, 0, BAR_ALIGN_LEFT, width_ltsymbol, draw_ltsymbol, click_ltsymbol,
     "layout"},
    {statusmon, 0, BAR_ALIGN_RIGHT, width_status2d, draw_status2d,
     click_status2d, "status2d"},
    {-1, 0, BAR_ALIGN_NONE, width_wintitle, draw_wintitle, click_wintitle,
     "wintitle"},
};

/* layout(s) */
static const float mfact = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster = 1;    /* number of clients in master area */
static const int resizehints =
    0; /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen =
    1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
    /* symbol     arrange function */
    {"  []=", tile}, /* first entry is default */
    {"  [M]", monocle}, {"  |M|", centeredmaster},
    {"  ><>", NULL}, /* no layout function means floating behavior */
    {NULL, NULL},
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY, TAG)                                                      \
  {MODKEY, KEY, view, {.ui = 1 << TAG}},                                       \
      {MODKEY | ControlMask, KEY, toggleview, {.ui = 1 << TAG}},               \
      {MODKEY | ShiftMask, KEY, tag, {.ui = 1 << TAG}},                        \
      {MODKEY | ControlMask | ShiftMask, KEY, toggletag, {.ui = 1 << TAG}},

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd)                                                             \
  {                                                                            \
    .v = (const char *[]) { "/bin/sh", "-c", cmd, NULL }                       \
  }

/* commands */
static char dmenumon[2] =
    "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = {
    "dmenu_run", "-m",  dmenumon,  "-fn", dmenufont, "-nb",
    "#1e1e2e",   "-nf", "#d9e0ee", "-sb", "#c9cbff", "-sf",
    "#1E1E2E",   "-Y",  "2",       "-p",  "RUN:",    NULL};
static const char *termcmd[] = {"st", NULL};

static Key keys[] = {
    /* modifier                     key            function argument */
    {MODKEY | ShiftMask, XK_Return, spawn, {.v = dmenucmd}},
    {MODKEY, XK_Return, spawn, {.v = termcmd}},
    {MODKEY, XK_Left, focusdir, {.i = 0}},  // left
    {MODKEY, XK_Right, focusdir, {.i = 1}}, // right
    {MODKEY, XK_Up, focusdir, {.i = 2}},    // up
    {MODKEY, XK_Down, focusdir, {.i = 3}},  // down
    {MODKEY, XK_Tab, swapfocus, {.i = -1}},
    {MODKEY | ShiftMask, XK_Down, pushdown, {0}},
    {MODKEY | ShiftMask, XK_Up, pushup, {0}},
    {MODKEY | ControlMask, XK_Left, setmfact, {.f = -0.05}},
    {MODKEY | ControlMask, XK_Right, setmfact, {.f = +0.05}},
    {MODKEY | ControlMask, XK_Up, setcfact, {.f = +0.25}},
    {MODKEY | ControlMask, XK_Down, setcfact, {.f = -0.25}},
    {MODKEY | ControlMask, XK_0, setcfact, {0}},
    {MODKEY, XK_g, zoom, {0}},
    {MODKEY, XK_v, view, {0}},
    {MODKEY | ShiftMask, XK_i, showhideclient, {0}},
    {MODKEY, XK_q, killclient, {0}},
    {MODKEY | ShiftMask, XK_q, quit, {0}},
    {MODKEY | ControlMask | ShiftMask, XK_q, quit, {1}},
    {MODKEY, XK_t, setlayout, {.v = &layouts[0]}},
    {MODKEY, XK_f, setlayout, {.v = &layouts[1]}},
    {MODKEY, XK_m, setlayout, {.v = &layouts[2]}},
    {MODKEY, XK_n, setlayout, {.v = &layouts[3]}},
    {MODKEY, XK_space, togglefloating, {0}},
    {MODKEY | ShiftMask, XK_f, togglefullscreen, {0}},
    {MODKEY, XK_comma, cyclelayout, {.i = -1}},
    {MODKEY, XK_period, cyclelayout, {.i = +1}},
    TAGKEYS(XK_1, 0) TAGKEYS(XK_2, 1) TAGKEYS(XK_3, 2) TAGKEYS(XK_4, 3)
        TAGKEYS(XK_5, 4)};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle,
 * ClkClientWin, or ClkRootWin */
static Button buttons[] = {
    /* click                event mask           button          function
       argument */
    {ClkLtSymbol, 0, Button1, setlayout, {0}},
    {ClkLtSymbol, 0, Button3, setlayout, {.v = &layouts[2]}},
    {ClkWinTitle, 0, Button1, togglewin, {0}},
    {ClkWinTitle, 0, Button3, showhideclient, {0}},
    {ClkWinTitle, 0, Button2, zoom, {0}},
    {ClkStatusText, 0, Button2, spawn, {.v = termcmd}},
    {ClkClientWin, MODKEY, Button1, movemouse, {0}},
    {ClkClientWin, MODKEY, Button2, togglefloating, {0}},
    {ClkClientWin, MODKEY, Button3, resizemouse, {0}},
    {ClkTagBar, 0, Button1, view, {0}},
    {ClkTagBar, 0, Button3, toggleview, {0}},
    {ClkTagBar, MODKEY, Button1, tag, {0}},
    {ClkTagBar, MODKEY, Button3, toggletag, {0}},
};
