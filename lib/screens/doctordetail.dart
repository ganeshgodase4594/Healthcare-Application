import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/utils/colors.dart';
import 'package:healthcare_frontend/widget/readmore.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  final String _aboutText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Pharmacy",
          style: GoogleFonts.poppins(
            color: AppColors.thirdColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        //border: Border.all(color: const Color.fromRGBO(34, 31, 31, 0.1),width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset("assets/images/cutie.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Dr. Vaamana",
                              style: GoogleFonts.poppins(
                                color: AppColors.thirdColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Dentists",
                              style: GoogleFonts.poppins(
                                color: AppColors.blackblur,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: AppColors.secondoryColor,
                                  size: 14,
                                ),
                                Text(
                                  "4.7",
                                  style: GoogleFonts.poppins(
                                    color: AppColors.secondoryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_city,
                                  color: AppColors.blackblur,
                                  size: 14,
                                ),
                                Text(
                                  "800m away",
                                  style: GoogleFonts.poppins(
                                    color: AppColors.blackblur,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  "About",
                  style: GoogleFonts.poppins(
                    color: AppColors.thirdColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Text("Lorem ipsum dolor sit amet, consectetur adipi elit, sed do eiusmod tempor incididunt ut laore et dolore magna aliqua. Ut enim ad minim veniam... Read more",style: GoogleFonts.poppins(color: AppColors.thirdColor,fontWeight: FontWeight.w600,fontSize: 16,),)),
                ReadMoreText(
                  text: _aboutText,
                  textStyle: GoogleFonts.poppins(
                    color: AppColors.blackblur,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                EasyDateTimeLine(
                  initialDate: DateTime.now(),
                  onDateChange: (selectedDate) {
                    //`selectedDate` the new date selected.
                  },
                  headerProps: const EasyHeaderProps(
                    monthPickerType: MonthPickerType.switcher,
                    dateFormatter: DateFormatter.fullDateDMY(),
                  ),
                  dayProps: EasyDayProps(
                    dayStructure: DayStructure.dayStrDayNum,
                    activeDayStyle: DayStyle(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(34, 31, 31, 0.1),
                            width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff3371FF),
                            Color(0xff3371FF),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 200,
                    //color: Colors.red,
                    child: TimeSlotSelection()),

                const SizedBox(
                  height: 5,
                ),

                GestureDetector(
                  child: Container(
                      height: 51,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: AppColors.secondoryColor,
                      ),
                      child: Center(
                        child: Text(
                          "Book Appointment",
                          style: GoogleFonts.poppins(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class TimeSlot {
  final String time;
  bool isBooked;
  bool isSelected;

  TimeSlot(this.time, {this.isBooked = false, this.isSelected = false});
}

class TimeSlotSelection extends StatefulWidget {
  @override
  _TimeSlotSelectionState createState() => _TimeSlotSelectionState();
}

class _TimeSlotSelectionState extends State<TimeSlotSelection> {
  List<TimeSlot> timeSlots = [
    TimeSlot("09:00 AM", isBooked: true),
    TimeSlot("10:00 AM"),
    TimeSlot("11:00 AM", isBooked: true),
    TimeSlot("01:00 PM", isBooked: true),
    TimeSlot("02:00 PM", isSelected: true),
    TimeSlot("03:00 PM"),
    TimeSlot("04:00 PM"),
    TimeSlot("07:00 PM"),
    TimeSlot("08:00 PM", isBooked: true),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      padding: EdgeInsets.all(16),
      itemCount: timeSlots.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (!timeSlots[index].isBooked) {
              setState(() {
                for (var slot in timeSlots) {
                  slot.isSelected = false;
                }
                timeSlots[index].isSelected = true;
              });
            }
          },
          child: Container(
            height: 100,
            width: 250,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: timeSlots[index].isSelected
                  ? AppColors.secondoryColor
                  : Colors.white,
              border: Border.all(
                width: 1,
                color: timeSlots[index].isBooked
                    ? Colors.grey.shade400
                    : Colors.grey.shade400,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              timeSlots[index].time,
              style: TextStyle(
                color: timeSlots[index].isBooked
                    ? Colors.grey.shade400
                    : timeSlots[index].isSelected
                        ? Colors.white
                        : Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}
