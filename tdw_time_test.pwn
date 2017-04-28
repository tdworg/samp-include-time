#include <a_samp>

#include "tdw_time\tdw_time"

main()
{
	new time_t:curtime = time();
	new tm[Time];

	// gmtime
	gmtime(curtime, tm);

	print(!" ");
	print(!"\tgmtime");
	print(!"------------------+----");
	print(!"Name          Cur | Max");
	print(!"------------------+----");
	printf("Seconds:      %3d | 60", tm[TIME_SEC]  );
	printf("Minutes:      %3d | 59", tm[TIME_MIN]  );
	printf("Hours:        %3d | 59", tm[TIME_HOUR] );
	printf("Day  (month): %3d | 31", tm[TIME_MDAY] );
	printf("Day  (year):  %3d | **", tm[TIME_YDAY] );
	printf("Day  (week):  %3d | 6 ", tm[TIME_WDAY] );
	// printf("Week (year):  %3d | 53", tm[TIME_YWEEK]);
	// printf("Week (month): %3d | 3 ", tm[TIME_MWEEK]);
	printf("Month:        %3d | 11", tm[TIME_MON]  );
	printf("Year:         %3d | **", tm[TIME_YEAR] );

	// mktime
	new time_t:newtime;
	newtime = mktime(tm);

	print(!" ");
	print(!"\tmktime");
	printf("%d (gettime) <-> %d (mktime)", curtime, newtime);

	// localtime
	// localtime(tm, curtime);
	// print(!" ");
	// print(!"\tlocaltime");
	// print(!"------------------+----");
	// print(!"Name          Cur | Max");
	// print(!"------------------+----");
	// printf("Seconds:      %3d | 60", tm[TIME_SEC]  );
	// printf("Minutes:      %3d | 59", tm[TIME_MIN]  );
	// printf("Hours:        %3d | 59", tm[TIME_HOUR] );
	// printf("Day  (month): %3d | 31", tm[TIME_MDAY] );
	// printf("Day  (year):  %3d | **", tm[TIME_YDAY] );
	// printf("Day  (week):  %3d | 3 ", tm[TIME_WDAY] );
	// printf("Week (year):  %3d | 53", tm[TIME_YWEEK]);
	// printf("Week (month): %3d | 3 ", tm[TIME_MWEEK]);
	// printf("Month:        %3d | 11", tm[TIME_MON]  );
	// printf("Year:         %3d | **", tm[TIME_YEAR] );

}
