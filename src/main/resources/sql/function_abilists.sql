CREATE ALIAS IF NOT EXISTS LAST_INSERT_ID_MAX AS '

@CODE
int lastInsertIdMax(int id) throws Exception {
    return id;
}
';

CREATE ALIAS IF NOT EXISTS DATE_FORMAT AS '

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
@CODE
String dateFormat(String date) throws Exception {
	String defaultFormat = "yyyy-MM";
	SimpleDateFormat sdf = new SimpleDateFormat(defaultFormat);
	return sdf.format(date);
}
';