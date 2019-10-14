//
//  ScanViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

//class ScanViewController: UIViewController, STSensorControllerDelegate {
class ScanViewController: UIViewController {

//
////    @IBAction func startScanButton(_ sender: Any) {
////        let streamingOptions: [AnyHashable: Any] = [
////            kSTStreamConfigKey: NSNumber(value: STStreamConfig.depth640x480.rawValue as Int),
////            kSTFrameSyncConfigKey: NSNumber(value: STFrameSyncConfig.depthAndRgb.rawValue as Int),
////            kSTHoleFilterEnabledKey: true
////        ]
////        do {
////            try sharedController.startStreaming(options: streamingOptions)
////        } catch let error as NSError {
////            print(error.description)
////        }
////
////        self.startButtonAction(sender: <#T##UIButton?#>)
////    }
//
////    @IBAction func stopScanButton(_ sender: Any) {
////        self.stopButtonAction(sender: <#T##UIButton?#>)
////
////    }
//    var sharedController: STSensorController
//
//
//    @IBOutlet weak var nameLabel: UILabel!
//
//
//
//    required init?(coder decoder: NSCoder){
//
//        sharedController = STSensorController.shared()
//        super.init(coder: decoder)
//
//        sharedController.delegate = self
//        sharedController.initializeSensorConnection()
//    }
//
//
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
////        let startButton = UIButton(frame: CGRect(x: 100, y:100, width:100, height:50))
////        startButton.backgroundColor = .green
////        startButton.setTitle("Start Scan", for: [])
////        startButton.addTarget(self, action: #selector(startButtonAction), for: .touchUpInside)
////
////        let stopButton = UIButton(frame: CGRect(x: 500, y:500, width:100, height:50))
////        stopButton.backgroundColor = .red
////        stopButton.setTitle("End Scan", for:[])
////        stopButton.addTarget(self, action: #selector(stopButtonAction), for: .touchUpInside)
////
////        self.view.addSubview(startButton)
////        self.view.addSubview(stopButton)
//
//    }
//
////    override func viewDidAppear(_ animated: Bool) {
////        //  viewDidAppear will run each time view appears. use this instead of viewDidLoad because the view isn't completely loaded yet and we want to change the label as it loads
////        nameLabel.text = "Begin scanning " + athlete
////    }
//
//
//     //Test button method
//    @objc func startButtonAction(sender: UIButton!){
//        let streamingOptions: [AnyHashable: Any] = [
//            kSTStreamConfigKey: NSNumber(value: STStreamConfig.depth640x480.rawValue as Int),
//            kSTFrameSyncConfigKey: NSNumber(value: STFrameSyncConfig.depthAndRgb.rawValue as Int),
//            kSTHoleFilterEnabledKey: true
//        ]
//        do {
//            try sharedController.startStreaming(options: streamingOptions)
//        } catch let error as NSError {
//            print(error.description)
//        }
//    }
//    @objc func stopButtonAction(sender: UIButton!){
//        sharedController.stopStreaming()
//    }
//
//
//    // Necessary implemented Structure methods
//    func sensorDidOutputSynchronizedInfraredFrame(_ irFrame: STInfraredFrame!, colorFrame: STColorFrame!) {
//
//    }
//    func sensorDidOutputInfraredFrame(_ irFrame: STInfraredFrame!) {
//
//    }
//    func sensorDidOutputSynchronizedDepthFrame(_ depthFrame: STDepthFrame!, colorFrame: STColorFrame!) {
//        let alignedDepthFrame: STDepthFrame = depthFrame.registered(to: colorFrame)
//        // OWN PROCESSING ON alignedDepthFrame
//    }
//    func sensorDidOutputDepthFrame(_ depthFrame: STDepthFrame!) {
//
//    }
//
//    func captureOutput(_output: AVCaptureOutput, didOutput
//        sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
//    {
//        //Feed it to Structure sensor
//        sharedController.frameSyncNewColorBuffer(sampleBuffer)
//    }
//
//
//
//    // Necessary methods to derive from STSensorControllerDelegate
//    func sensorDidConnect() {
//    }
//
//    func sensorDidDisconnect() {
//
//    }
//
//    func sensorDidStopStreaming(_ reason: STSensorControllerDidStopStreamingReason) {
//
//    }
//
//    func sensorDidLeaveLowPowerMode() {
//
//    }
//
//    func sensorBatteryNeedsCharging() {
//
//    }

}
