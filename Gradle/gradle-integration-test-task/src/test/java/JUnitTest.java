import org.junit.*;
import org.junit.runner.*;

import jdk.nashorn.internal.ir.annotations.Ignore;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertEquals;
import java.beans.Transient;

public class JUnitTest {
    @Test
    public void test1() {
        assertTrue(true);
    }

    @Test
    @Ignore
    public void test2() {
        // System Properties
        assertEquals("bar", System.getProperty("foo"));
    }

    @Test
    public void test3() {
        // Project properties
        assertEquals("variable1", System.getProperty("varA"));
    }

    @Test
    @Ignore
    public void test4() {
        assertTrue(true);
    }
}
