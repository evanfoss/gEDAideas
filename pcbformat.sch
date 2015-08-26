v 20130925 2
C 40000 40000 0 0 0 title-B.sym
T 48100 46400 9 10 1 0 0 2 3
Footprint
* geometry
* silk screen
T 47000 47200 9 10 1 0 0 3 1
Board
B 48000 45500 1500 1000 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
B 46500 47000 1000 500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 45600 45900 9 10 1 0 0 0 2
Layers
(linked list)
T 48000 47000 9 10 1 0 0 2 2
Orientation (X, Y, Z, & Theta)
Layer Mapping
B 47900 45400 2700 1900 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 44700 44700 9 10 1 0 0 0 3
Everything has a clearance
Everything has dimensions
Any number can be 0 (you can't have a via w/0 copper & 0 dia drill)
T 44500 48600 9 10 1 0 0 0 7
struct Element;
Element Type;
Location;
Dimensions;
*netinfo; (pointer to node in another linked list of netlist entries and their metadata)
*superstruct; (pointer to node in another linked list of refrence designators, their footprint names and etc; null if not in footprint)
*Sisters; (other nodes assocated with this one vertically, ex. if this is copper their will be one on in the mask layer)
T 40600 47600 9 10 1 0 0 0 9
struct NETinfo
netname
netlengthmax
netlengthmin
netlengthnom
netwidthmax
netwidthmin
netwidthnom
*superstructure //pointer to a struct describing the larger structure bus, pair, bus of pairs or NULL if it is just a loan net.
T 38200 51000 9 10 1 0 0 0 4
struct BUSinfo
busname
traceproperties;
*members; // linked list of NETinfo
T 43900 50800 9 10 1 0 0 0 10
struct PAIRinfo
netname
PAIRlengthmax
PAIRlengthmin
PAIRlengthnom
PAIRwidthmax
PAIRwidthmin
PAIRwidthnom
*memberA; //ptr's to NETinfo entries
*memberB; 
T 37600 45500 9 10 1 0 0 0 7
struct traceproperties
lengthmax
lengthmin
lengthnom
widthmax
widthmin
widthnom
