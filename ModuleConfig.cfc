component {
  function configure() {
    settings = {
      checkForUpdates = true
    };
  }

  function onCLIStart( interceptData ) {
    if ( settings.checkForUpdates && interceptData.shellType == 'interactive' ) {
      shell.callCommand( 'upgrade' );
    }
  }
}