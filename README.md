# SeetaFace6-Build
在最小限度改动情况下，提供SeetaFace6的编译帮助

[SeetaFace6人脸检测-活体检测-疲劳检测-口罩检测(全部开源)](https://mp.weixin.qq.com/s/qZRvi4Ocsmle2Na142OTBQ)

## 下载源码
- 下载所有SeetaFace6的代码：  git clone 和 更新所有子模块
- 已经有SeetaFace6Open的代码：只需克隆本项目把文件放到SeetaFace6Open的根目录，还需把SeetaFace6JNI也克隆SeetaFace6Open的根目录，无需clone子模块。
- 完整的根目录结构：
```
$ tree -a  -L 1 seetaface6open
seetaface6open
├── .git
├── .gitmodules
├── android
├── asserts
├── build-android-on-win.bat
├── docs
├── example
├── FaceAntiSpoofingX6
├── FaceBoxes
├── FaceRecognizer6
├── FaceTracker6
├── Landmarker
├── OpenRoleZoo
├── PoseEstimator6
├── QualityAssessor3
├── README.md
├── SeetaAgePredictor
├── SeetaAuthorize
├── SeetaEyeStateDetector
├── SeetaFace6-Build
├── SeetaFace6JNI
├── SeetaFace6JNI.patch
├── SeetaGenderPredictor
├── SeetaMaskDetector
└── TenniS

21 directories, 4 files
```

## 官方原有文档
[官方c++库](https://github.com/SeetaFace6Open/index)

[官方JNI库](https://github.com/SeetaFace6Open/SeetaFace6JNI)

[官方原有文档](https://github.com/SeetaFace6Open/index/blob/master/README.md)

## Android编译
1. 在windows直接运行build-android-on-win.bat，你可以带上参数如：-j4, clean
```
build-android-on-win.bat -j4   #编译
build-android-on-win.bat clean #删除编译
```
注意：在build-android-on-win.bat里根据个人情况修改NDK安装目录：set NDK_DIR="C:\Android\sdk\ndk\21.0.6113669"

2. SeetaFace6JNI的c++原始代码编译报错：seeta::ModelSetting_v2未定义。所以把相关代码注释掉。详见SeetaFace6JNI.patch。虽不完美但也不影响使用。
3. 编译之后的48个库文件

```
$ tree android/libs/
android/libs/
├── arm64-v8a
│   ├── libSeetaAgePredictor600.so
│   ├── libSeetaAgePredictor600_java.so
│   ├── libSeetaAuthorize.so
│   ├── libSeetaEyeStateDetector200.so
│   ├── libSeetaEyeStateDetector200_java.so
│   ├── libSeetaFaceAntiSpoofingX600.so
│   ├── libSeetaFaceAntiSpoofingX600_java.so
│   ├── libSeetaFaceDetector600.so
│   ├── libSeetaFaceDetector600_java.so
│   ├── libSeetaFaceLandmarker600.so
│   ├── libSeetaFaceLandmarker600_java.so
│   ├── libSeetaFaceRecognizer610.so
│   ├── libSeetaFaceRecognizer610_java.so
│   ├── libSeetaFaceTracking600.so
│   ├── libSeetaFaceTracking600_java.so
│   ├── libSeetaGenderPredictor600.so
│   ├── libSeetaGenderPredictor600_java.so
│   ├── libSeetaMaskDetector200.so
│   ├── libSeetaMaskDetector200_java.so
│   ├── libSeetaPoseEstimation600.so
│   ├── libSeetaPoseEstimation600_java.so
│   ├── libSeetaQualityAssessor300.so
│   ├── libSeetaQualityAssessor300_java.so
│   └── libtennis.so
└── armeabi-v7a
    ├── libSeetaAgePredictor600.so
    ├── libSeetaAgePredictor600_java.so
    ├── libSeetaAuthorize.so
    ├── libSeetaEyeStateDetector200.so
    ├── libSeetaEyeStateDetector200_java.so
    ├── libSeetaFaceAntiSpoofingX600.so
    ├── libSeetaFaceAntiSpoofingX600_java.so
    ├── libSeetaFaceDetector600.so
    ├── libSeetaFaceDetector600_java.so
    ├── libSeetaFaceLandmarker600.so
    ├── libSeetaFaceLandmarker600_java.so
    ├── libSeetaFaceRecognizer610.so
    ├── libSeetaFaceRecognizer610_java.so
    ├── libSeetaFaceTracking600.so
    ├── libSeetaFaceTracking600_java.so
    ├── libSeetaGenderPredictor600.so
    ├── libSeetaGenderPredictor600_java.so
    ├── libSeetaMaskDetector200.so
    ├── libSeetaMaskDetector200_java.so
    ├── libSeetaPoseEstimation600.so
    ├── libSeetaPoseEstimation600_java.so
    ├── libSeetaQualityAssessor300.so
    ├── libSeetaQualityAssessor300_java.so
    └── libtennis.so

2 directories, 48 files
```

## 其他平台其他语言编译
    - TODO

## 中科视拓刚刚开源了SeetaFace6JNI，但是没有提供编译脚本，我来说说怎么编译：
1. 官方android sdk的so列表：分带java的和不带java的：

```
$ tree sf6.0_android/example/FaceRecognizerDemo/src/main/jniLibs
sf6.0_android/example/FaceRecognizerDemo/src/main/jniLibs
└── armeabi-v7a
    ├── libopencv_java3.so
    ├── libSeetaAuthorize.so
    ├── libSeetaFaceDetector600.so
    ├── libSeetaFaceDetector600_java.so
    ├── libSeetaFaceLandmarker600.so
    ├── libSeetaFaceLandmarker600_java.so
    ├── libSeetaFaceRecognizer600.so
    ├── libSeetaFaceRecognizer600_java.so
    └── libTenniS.so

1 directory, 9 files
```

2. SeetaFace6JNI提供了SeetaFace6的java sdk的源码，可以编译出跟官方Android sdk一样库，也可以支持windows，linux，mac等。
3. SeetaFace6JNI提供了java接口源码 和 jni c++源码。 前者直接或者编译成jar给app用，后者可以编译出xxx_java.so。
4. SeetaFace6JNI依赖除了xxx_java.so以外的so。这些so需要在底层c++库上面编译。
5. 编译思路：a. 先在底层库编译非java的so；b. 再在SeetaFace6JNI上编译带java的so。
编译方法：
    - 方法1：把 SeetaFace6JNI的c++文件拷贝到底层库，修改cmake脚本。 此方法最简单。官方没这样。
    - 方法2：先从底层库编译so之后，再想办法编译jni。 具体可以用Android studio，windows的vs，普通的makefile，cmake等任意方法。
6. 注意：
    - android编译需要ndk。
    - pc(windows,linux,mac等)平台先装jdk。编译时需要连接jvm库和jdk头文件。
    - 编译方法1一劳永逸。
    - 编译方法2对于熟悉平台开发的人非常方便。比如vs项目加几个文件库和库就可以了。
