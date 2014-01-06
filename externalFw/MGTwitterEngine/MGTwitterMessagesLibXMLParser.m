//
//  MGTwitterMessagesLibXMLParser.m
//  MGTwitterEngine
//
//  Created by Matt Gemmell on 11/02/2008.
//  Copyright 2008 Instinctive Code.
//

#import "MGTwitterMessagesLibXMLParser.h"


@implementation MGTwitterMessagesLibXMLParser

- (NSDictionary *)_directMessageDictionaryForNodeWithName:(const xmlChar *)parentNodeName {
	if (xmlTextReaderIsEmptyElement(_reader))
		return nil;
	NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];

	int readerResult = xmlTextReaderRead(_reader);
	if (readerResult != 1)
		return nil;
	int nodeType = xmlTextReaderNodeType(_reader);
	const xmlChar *name = xmlTextReaderConstName(_reader);
	while (! (nodeType == XML_READER_TYPE_END_ELEMENT && xmlStrEqual(parentNodeName, name)))
	{
		if (nodeType == XML_READER_TYPE_ELEMENT)
		{
			if (xmlStrEqual(name, BAD_CAST "sender") || xmlStrEqual(name, BAD_CAST "recipient"))
			{
				// "user" is the name of a sub-dictionary in each <status> item
				dictionary[@((const char *)name)] = [self _userDictionaryForNodeWithName:name];
			}
			else if (xmlStrEqual(name, BAD_CAST "id") || xmlStrEqual(name, BAD_CAST "sender_id") || xmlStrEqual(name, BAD_CAST "recipient_id"))
			{
				// process element as an integer
				NSNumber *number = [self _nodeValueAsInt];
				if (number)
				{
					dictionary[@((const char *)name)] = number;
				}
			}
			else if (xmlStrEqual(name, BAD_CAST "created_at"))
			{
				// process element as a date
				NSDate *date = [self _nodeValueAsDate];
				if (date)
				{
					dictionary[@((const char *)name)] = date;
				}
			}
			else if (xmlStrEqual(name, BAD_CAST "protected"))
			{
				// process element as a boolean
				NSNumber *number = [self _nodeValueAsBool];
				if (number)
				{
					dictionary[@((const char *)name)] = number;
				}
			}
			else
			{
				// process element as a string
				NSString *string = [self _nodeValueAsString];
				if (string)
				{
					dictionary[@((const char *)name)] = string;
				}
			}
		}

		// advance reader
		readerResult = xmlTextReaderRead(_reader);
		if (readerResult != 1)
			break;
		nodeType = xmlTextReaderNodeType(_reader);
		name = xmlTextReaderConstName(_reader);
	}

	// save the request type in the tweet
	dictionary[TWITTER_SOURCE_REQUEST_TYPE] = @(requestType);

	return dictionary;
}


- (void)parse
{
	int readerResult = xmlTextReaderRead(_reader);
	if (readerResult != 1)
		return;
	int nodeType = xmlTextReaderNodeType(_reader);
	const xmlChar *name = xmlTextReaderConstName(_reader);
	while (! (nodeType == XML_READER_TYPE_END_ELEMENT && xmlStrEqual(BAD_CAST "direct-messages", name)))
	{
		if (nodeType == XML_READER_TYPE_ELEMENT)
		{
			if (xmlStrEqual(name, BAD_CAST "direct_message"))
			{
				[parsedObjects addObject:[self _directMessageDictionaryForNodeWithName:BAD_CAST "direct_message"]];
			}
		}

		// advance reader
		readerResult = xmlTextReaderRead(_reader);
		if (readerResult != 1)
		{
			break;
		}
		nodeType = xmlTextReaderNodeType(_reader);
		name = xmlTextReaderConstName(_reader);
	}
}

@end
