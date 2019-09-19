class ScheduleModel {
  final String faceName;
  final List members;
  final List candidateDays;
  final String createDatetime;

  ScheduleModel({this.faceName, this.members, this.candidateDays, this.createDatetime});
}

List<ScheduleModel> scheduleData = [
  new ScheduleModel(
      faceName: "田中一郎",
      members: [{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル病院代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表','profile_image' :"http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb" }
               ],
      candidateDays: ["2019/12/13 15:30","2019/12/17 15:30"],
      createDatetime: "2019/12/01 15:30",),
  new ScheduleModel(
      faceName: "田中次郎",
      members: [{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル病院代表' }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表' }],
      candidateDays: ["2019/12/13 15:30","2019/12/17 15:30"],
      createDatetime: "2019/12/01 15:30",),
  new ScheduleModel(
      faceName: "田中三郎",
      members: [{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル病院代表' }
               ,{ 'user_id' :'XXXXXXXXX','user_name' :'クラセル居宅事業所代表' }],
      candidateDays: ["2019/12/13 15:30","2019/12/17 15:30"],
      createDatetime: "2019/12/01 15:30",),
];
