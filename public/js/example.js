$(document).ready(function() {

    var container = $('#container');

    // fade in effect
    container.css({
        opacity: 0
    });
    container.delay(500).animate({
        opacity: 1
    }, 500);

    container.theta_carousel({
        "filter": ".ex-item",
        "selectedIndex": 20,
        "distance": 44,
        "numberOfElementsToDisplayRight": 4,
        "numberOfElementsToDisplayLeft": 10,
        "designedForWidth": 1600,
        "designedForHeight": 705,
        "distanceInFallbackMode": 350,
        "scaleX": 3.14,
        "scaleY": 1.18,
        "scaleZ": 1.06,
        "path": {
            "settings": {
                "shiftX": 24,
                "shiftZ": -1422,
                "fi": 2
            },
            "type": "archimedes_spiral"
        },
        "perspective": 1460,
        "mode3D": "scale",
        "rotationAnimationEasing": "easeInQuad",
        "sensitivity": -0.2,
        "shadow": true,
        "shadowBlurRadius": 108,
        "shadowSpreadRadius": -29,
        "fadeAway": true,
        "fadeAwayNumberOfConfigurableElements": 10,
        "fadeAwayBezierPoints": {
            "p1": {
                "x": 0,
                "y": 100
            },
            "p2": {
                "x": 68,
                "y": 99
            },
            "p3": {
                "x": 97,
                "y": 74
            },
            "p4": {
                "x": 100,
                "y": 14
            }
        },
        "popoutSelected": true,
        "popoutSelectedShiftX": -63,
        "popoutSelectedShiftY": -26,
        "popoutSelectedShiftZ": 447
    });
});