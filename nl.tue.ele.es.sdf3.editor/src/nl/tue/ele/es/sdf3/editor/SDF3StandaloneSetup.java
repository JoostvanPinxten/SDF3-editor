/*
* generated by Xtext
*/
package nl.tue.ele.es.sdf3.editor;

/**
 * Initialization support for running Xtext languages 
 * without equinox extension registry
 */
public class SDF3StandaloneSetup extends SDF3StandaloneSetupGenerated{

	public static void doSetup() {
		new SDF3StandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}

