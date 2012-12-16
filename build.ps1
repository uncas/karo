$revision = (git rev-parse --short HEAD)
$commitCount = (git log --oneline).count

msbuild default.targets /p:Revision=$revision /p:CommitCount=$commitCount

msbuild demo\init.targets
msbuild demo\default.targets