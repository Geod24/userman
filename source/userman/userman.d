/**
	Basic definitions

	Copyright: © 2012 RejectedSoftware e.K.
	License: Subject to the terms of the General Public License version 3, as written in the included LICENSE.txt file.
	Authors: Sönke Ludwig
*/
module userman.userman;

public import vibe.mail.smtp;

class UserManSettings {
	bool requireAccountValidation = true;
	bool useUserNames = true; // use a user name or the email address for identification?
	string databaseName = "test";
	string serviceName = "User database test";
	string serviceUrl = "http://www.example.com/";
	string serviceEmail = "userdb@example.com";
	SmtpClientSettings mailSettings;

	this()
	{
		mailSettings = new SmtpClientSettings;
	}
}