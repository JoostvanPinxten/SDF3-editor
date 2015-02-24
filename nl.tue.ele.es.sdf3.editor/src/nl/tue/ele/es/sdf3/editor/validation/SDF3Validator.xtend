/*
 * generated by Xtext
 */
package nl.tue.ele.es.sdf3.editor.validation

import nl.tue.ele.es.sdf3.editor.sDF3.Channel
import nl.tue.ele.es.sdf3.editor.sDF3.PortType
import nl.tue.ele.es.sdf3.editor.sDF3.SDF3Package
import org.eclipse.xtext.validation.Check

//import org.eclipse.xtext.validation.Check

/**
 * Custom validation rules. 
 *
 * see http://www.eclipse.org/Xtext/documentation.html#validation
 */
class SDF3Validator extends AbstractSDF3Validator {

    public static val INCORRECT_CHANNEL_SOURCE = 'incorrectChannelSource'
	public static val INCORRECT_CHANNEL_DESTINATION = 'incorrectChannelDestination'
	@Check
	def checkChannels(Channel channel) {
		if(channel.source != null && channel.source.portType != PortType.OUT) {
			error('Not allowed connect an input port as the source of a channel', 
					SDF3Package.Literals.CHANNEL__SOURCE,
					INCORRECT_CHANNEL_SOURCE);
		}
		
		if(channel.destination != null && channel.destination.portType != PortType.IN) {
			error('Not allowed connect an output port as the destination of a channel', 
					SDF3Package.Literals.CHANNEL__DESTINATION,
					INCORRECT_CHANNEL_DESTINATION);
		}		
	}
}
