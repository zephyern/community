// Package stravagoal provides details for the Strava Goal applet.
package stravagoal

import (
	_ "embed"

	"tidbyt.dev/community/apps/manifest"
)

//go:embed strava_goal.star
var source []byte

// New creates a new instance of the Strava Goal applet.
func New() manifest.Manifest {
	return manifest.Manifest{
		ID:          "strava-goal",
		Name:        "Strava Goal",
		Author:      "zephyern",
		Summary:     "Progress towards goals",
		Desc:        "Displayes the progress towards your yearly distance goal on strava.",
		FileName:    "strava_goal.star",
		PackageName: "stravagoal",
		Source:  source,
	}
}

