This is a stupid implementation of a Gilbert tesselation which in Wikipedish is where you take a Poisson distributed set of points and then grow cracks out of those points in either direction until they meet other cracks. I haven't seen a JavaScript version of this so here it is.

Redraws on window resize, which in practice mostly means that it's fun to put on your phone and tip around.

Also included is a virtually identical Processing sketch that I used to mock it up before messing with JavaScript implementation and associated finicky stuff.

Window resize code from:
https://stackoverflow.com/questions/1664785/resize-html5-canvas-to-fit-window
(which in turn references http://htmlcheats.com/html/resize-the-html5-canvas-dyamically/)

Collision checking code from:
https://gamedev.stackexchange.com/questions/26004/how-to-detect-2d-line-on-line-collision
(which in turn references http://local.wasp.uwa.edu.au/~pbourke/geometry/lineline2d/)