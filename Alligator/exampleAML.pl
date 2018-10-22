%
% File: exampleAML.pl
%

:-dynamic(isRelated/2).
:-dynamic(hasAttribute/2).

clause1(isRelated(E1,E2), (hasAttribute(E1,E2))).
clause1(isRelated(E1,E2), (hasAttribute(E1,L),hasAttribute(E2,L))).
clause1(isRelated(E1,E3), (hasAttribute(E1,E2),hasAttribute(E2,E3))).
clause1(isRelated(E1,E2), (isRelated(E1,E2),isRelated(E2,E3))).


clause1(hasAttribute(belt1,motor1),true).
clause1(hasAttribute(belt1,roller1),true).
clause1(hasAttribute(belt2,controlunit2),true).
clause1(hasAttribute(controlunit2,motor2),true).
clause1(hasAttribute(controlunit2,roller2),true).
clause1(hasAttribute(belt3,drive3),true).
clause1(hasAttribute(belt3,motor3),true).
clause1(hasAttribute(drive3,roller3),true).

