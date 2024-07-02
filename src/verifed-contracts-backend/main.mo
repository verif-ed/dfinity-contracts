import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor {

  type UniqueID = Text;

  type Entry = {
    //type of test
    desc: Text;
    // user id(address or something)
    user: Text
  };

  let exams = Map.HashMap<UniqueID, Entry>(0, Text.equal, Text.hash);

  public func insert(code : UniqueID, entry : Entry): async () {
    exams.put(code, entry);
  };

  public query func lookup(name : UniqueID) : async ?Entry {
    exams.get(name)
  };
};