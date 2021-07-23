@echo off
setlocal enabledelayedexpansion

set NDK_DIR="C:\Android\sdk\ndk\21.0.6113669"
set CURRENT_DIR=%~dp0
set PATH=%NDK_DIR%;%PATH%

set param=%1

echo ndk-param=%param%

cd /d %CURRENT_DIR%TenniS\android\jni
echo "%cd%"
::call ndk-build %param%

cd /d %CURRENT_DIR%SeetaAuthorize\android\jni
echo "%cd%"
::call ndk-build %param%


cd /d %CURRENT_DIR%OpenRoleZoo\android\jni
echo "%cd%"
::call ndk-build %param%

cd /d %CURRENT_DIR%FaceAntiSpoofingX6\FaceAntiSpoofingX\android\jni
echo "%cd%"
call ndk-build %param%

cd /d %CURRENT_DIR%FaceBoxes\FaceDetector\android\jni
echo "%cd%"
call ndk-build %param%
  
cd /d %CURRENT_DIR%FaceRecognizer6\FaceRecognizer\android\jni
echo "%cd%"
call ndk-build %param%

cd /d %CURRENT_DIR%FaceTracker6\FaceTracking\android\jni
echo "%cd%"
call ndk-build %param%

cd /d %CURRENT_DIR%Landmarker\Landmarker\android\jni
echo "%cd%"
call ndk-build %param%

cd /d %CURRENT_DIR%PoseEstimator6\PoseEstimation\android\jni
echo "%cd%"
call ndk-build %param%

cd /d %CURRENT_DIR%QualityAssessor3\QualityAssessor\android\jni
echo "%cd%"
call ndk-build %param%

cd /d %CURRENT_DIR%SeetaAgePredictor\AgePredictor\android\jni
echo "%cd%"
call ndk-build %param%

cd /d %CURRENT_DIR%SeetaEyeStateDetector\EyeStateDetector\android\jni
echo "%cd%"
call ndk-build

cd /d %CURRENT_DIR%SeetaMaskDetector\MaskDetector\android\jni
echo "%cd%"
call ndk-build %param%

cd /d %CURRENT_DIR%android\jni
echo "%cd%"
call ndk-build %param%

pause

