

eventCompileEnd = {
  createVersionInfo()
  copySampleWorkarea()
}


createVersionInfo = {
  ant.echo(file: "${grailsSettings.classesDir.path}/${grailsAppName}.version",
          message: "Module: ${grailsAppName}, Build version: ${grailsAppVersion}, Build time: ${String.format('%tY.%<tm.%<td at %<tH:%<tM %<tZ', new Date())}")
}

copySampleWorkarea = {
  ant.copy(todir: "web-app/workarea", overwrite: true) {
    //  fileset (dir: "../grailsflow-core-plugin/src/samples", includes: '**/*.groovy')
    fileset (dir: "${grailsflowPluginDir}/src/samples", includes: '**/*.groovy')
  }

}
