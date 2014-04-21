

eventCompileEnd = {
  createVersionInfo()
  copySampleWorkarea()
}


createVersionInfo = {
  Ant.echo(file: "${grailsSettings.classesDir.path}/${grailsAppName}.version",
          message: "Module: ${grailsAppName}, Build version: ${grailsAppVersion}, Build time: ${String.format('%tY.%<tm.%<td at %<tH:%<tM %<tZ', new Date())}")
}

copySampleWorkarea = {
  Ant.copy(todir: "web-app/workarea", overwrite: true) {
    fileset (dir: "../grailsflow-core/src/samples", includes: '**/*.groovy')
  }

}
