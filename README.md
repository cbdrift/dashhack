# PowerTune

This is not my code - ths is not the original repository
this is a clone of Powertunedigitaloffical
which is cloned from the origina powertune dashboard by others as well

this only exists as a learning experience for me and is butcherously hacked to do things in the most incorrect ways because
i dont use c or qt or githb or linux :)

changes from original
- updated updatepowertune.sh
  script to point to my repository on github
- updated connect.cpp
  - void Connect::checkifraspberrypi()
    now sets brightness to 100 hardcoded because slider is borked otherwise
- updated dashboard.cpp
  - void DashBoard::setLAMBDATarget(const qreal &LAMBDATarget)
    now does the lamdamultiplicator factor the same as setlambda() does

  
todo
- fix the map sensor display to be in gauge (-100 to 100) not in absolute (0-200)
  - have put in a hack into dashboard.cpp void DashBoard::setMAP(const qreal &MAP) to see if this does it

