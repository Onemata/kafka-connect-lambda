package com.nordstrom.kafka.connect.lambda;

/**
 * This class is used by the templating-maven-plugin to generate the
 * CURRENT_VERSION constant.
 */
public class About {
    public static final String CURRENT_VERSION = "${project.version}";
}
