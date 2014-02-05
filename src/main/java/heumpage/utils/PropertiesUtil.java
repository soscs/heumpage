package heumpage.utils;

import java.util.Locale;

import org.springframework.context.support.MessageSourceAccessor;

public class PropertiesUtil {

	private static MessageSourceAccessor accessor;
	
	public void setMessageSourceAccessor(MessageSourceAccessor accessor)
	{
		PropertiesUtil.accessor = accessor;
	}
	
	public static String getMessage(String key)
	{
		return accessor.getMessage(key ,Locale.getDefault());
	}
	
	public static String getMessage(String key,Locale locale)
	{
		return accessor.getMessage(key ,locale);
	}
	
	public static String getMessage(String key, Object[] objs)
	{
		return accessor.getMessage(key, objs ,Locale.getDefault());
	}
	
}
