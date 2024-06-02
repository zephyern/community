"""
Applet: Strava Goal
Summary: Progress towards goals
Description: Displayes the progress towards your yearly distance goal on strava.
Author: zephyern
"""

load("render.star", "render")
load("schema.star", "schema")

def main(config):
    miles = config.get("miles") or 0
    diff = config.get("diff") or 0
    percent = config.get("percent") or 0
    kelly = config.get("kelly") or 0
    daniel = config.get("daniel") or 0

    return render.Root(
        render.Column(
            children = [
                render.Text(content = "2024 Goals", color = "#099"),
                render.Text(content = "%s / 500mi" % miles, color = "#099"),
                render.Text(content = "%s%% (%smi)" % (percent, diff), color = "#099"),
                render.Text("K: %s, D: %s" % (kelly, daniel), color = "#099"),
            ]
        )
    )

def get_schema():
    return schema.Schema(
        version = "1",
        fields = [],
    )

