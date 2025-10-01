local g = import 'github.com/grafana/grafonnet/gen/grafonnet-latest/main.libsonnet';

local variables = [
g.dashboard.variable.datasource.new('PROMETHEUS_DS', 'prometheus')
+ g.dashboard.variable.datasource.withRegex('/^prometheus$/')
+ g.dashboard.variable.datasource.generalOptions.showOnDashboard.withNothing(),

g.dashboard.variable.constant.new('namespace', 'monitoring')
+ g.dashboard.variable.constant.generalOptions.withLabel('namespace')
+ g.dashboard.variable.constant.generalOptions.showOnDashboard.withLabelAndValue(),

g.dashboard.variable.custom.new('jobs', ['job-A', 'job-B', 'job-C'])
+ g.dashboard.variable.custom.generalOptions.withLabel('JoB: ')
+ g.dashboard.variable.custom.generalOptions.showOnDashboard.withLabelAndValue()
+ g.dashboard.variable.custom.selectionOptions.withMulti()
+ g.dashboard.variable.custom.selectionOptions.withIncludeAll(),

g.dashboard.variable.textbox.new('pod2', default="__your_pod_name__")
+ g.dashboard.variable.textbox.generalOptions.withCurrent("__your_pod_name__", "__your_pod_name__"),

g.dashboard.variable.textbox.new('pod3', default="XYZ"),

g.dashboard.variable.textbox.new('pod4', 'default_value'),

g.dashboard.variable.query.new('app')
+ g.dashboard.variable.query.withDatasource('prometheus', '${PROMETHEUS_DS}')
+ g.dashboard.variable.query.queryTypes.withLabelValues('app', 'up{}')
+ g.dashboard.variable.query.refresh.onTime()

];
local panels = [];

// https://grafana.github.io/grafonnet/API/dashboard/index.html
g.dashboard.new('my-awesome-dashboard')
+ g.dashboard.withEditable(true)
+ g.dashboard.withUid('my-awesome-dashboard')
+ g.dashboard.withTags(['tag1', 'tag2'])
+ g.dashboard.withTimezone('UTC')
+ g.dashboard.time.withFrom('now-1h')
+ g.dashboard.time.withTo('now')
+ g.dashboard.graphTooltip.withSharedCrosshair()
+ g.dashboard.withVariables(variables)
+ g.dashboard.withPanels(panels)
