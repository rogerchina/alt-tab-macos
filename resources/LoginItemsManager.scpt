JsOsaDAS1.001.00bplist00�Vscript_�function handler(shouldLaunchAtLogin, appPath) {
  const systemEvents = Application('System Events')
  const loginItems = systemEvents.loginItems
  if (shouldLaunchAtLogin) {
    loginItems.push(systemEvents.LoginItem({path: appPath, hidden: false}))
  } else {
    loginItems().forEach(loginItem => {
      if (loginItem.path() === appPath) {
	    loginItem.delete()
	  }
    })
  }
}
                              �jscr  ��ޭ