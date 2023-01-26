package shop.mtcoding.test1.util;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateUtil {

    public static String timeStampFormat(Timestamp stamp) {
        LocalDateTime now = stamp.toLocalDateTime();
        String res = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        return res;
    }
}
