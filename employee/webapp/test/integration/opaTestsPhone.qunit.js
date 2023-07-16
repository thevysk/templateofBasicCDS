/* global QUnit */

QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function() {
	"use strict";

	sap.ui.require([
		"com/vysk/ui5appname/test/integration/PhoneJourneys"
	], function() {
		QUnit.start();
	});
});