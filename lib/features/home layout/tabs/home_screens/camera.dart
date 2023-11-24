import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_images.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late List<CameraDescription> cameras;
  late CameraController controller;
  int index = 0;
  @override
  void initState() {
    super.initState();
    availableCameras().then((availableCameras) {
      cameras = availableCameras;

      controller = CameraController(cameras[index], ResolutionPreset.medium);
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isFlashlightOn = false;
  Widget flash = Image.asset(AppImages.light, color: Colors.white);
  void toggleFlashlight() {
    if (isFlashlightOn) {
      controller.setFlashMode(FlashMode.off);
    } else {
      controller.setFlashMode(FlashMode.torch);
    }

    setState(() {
      isFlashlightOn = !isFlashlightOn;
    });
  }

  void changeCamera() {
    index = index == 0 ? 1 : 0;

    controller = CameraController(cameras[index], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    }
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          CameraPreview(controller),
          Positioned(
            top: 17.h,
            left: 17.w,
            child: InkWell(
              onTap: toggleFlashlight,
              child: Image.asset(AppImages.settings, color: Colors.white),
            ),
          ),
          Positioned(
            top: 17.h,
            right: 17.w,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_forward_ios,
                  color: Colors.white, size: 24.r),
            ),
          ),
          Positioned(
            bottom: 49.5.h,
            left: 92.25.w,
            child: InkWell(
              onTap: toggleFlashlight,
              child: flash,
            ),
          ),
          Positioned(
            bottom: 49.5.h,
            left: 38.w,
            child: InkWell(
              onTap: toggleFlashlight,
              child: Container(
                  width: 24.50.w,
                  height: 24.50.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.sliderTemp3),
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
          ),
          Positioned(
            bottom: 52.h,
            right: 94.w,
            child: InkWell(
              onTap: changeCamera,
              child: Image.asset(AppImages.changeCamera, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 52.h,
            right: 32.5.w,
            child: InkWell(
              onTap: changeCamera,
              child: Image.asset(AppImages.faceMasks, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 24.h,
            left: 148.w,
            child: InkWell(
              onTap: () {
                controller.takePicture();
              },
              child: Image.asset(AppImages.shot),
            ),
          ),
        ],
      ),
    );
  }
}
