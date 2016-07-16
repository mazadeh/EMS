package com.mohammadazadeh.ems.domain;

import java.util.logging.Logger;
import java.util.logging.Level;
import java.util.logging.Handler;
import java.util.logging.FileHandler;
import java.io.IOException;

public class LOGUtil
{
	public static Logger getLogger(Class clazz)
	{
		Logger LOGGER = Logger.getLogger(clazz.getName());
		if (LOGGER.getHandlers().length == 0)
		{
			Handler fh = null;
			try
			{
				fh = new FileHandler("logs/" + clazz.getName() + ".log", true);
			}
			catch (IOException ex)
			{
				System.err.println("Unable to create/load log file for class " + clazz.getName());
				System.err.println(ex);
			}
			LOGGER.addHandler(fh);
			LOGGER.setLevel(Level.ALL);
			System.err.println("LOGGER file created for " + clazz.getName());
		}
		return LOGGER;
	}
}