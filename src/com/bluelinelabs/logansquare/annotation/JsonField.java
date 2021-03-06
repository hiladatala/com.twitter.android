package com.bluelinelabs.logansquare.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface JsonField
{
  String[] name() default {};
  
  Class typeConverter() default void.class;
}

/* Location:
 * Qualified Name:     com.bluelinelabs.logansquare.annotation.JsonField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */