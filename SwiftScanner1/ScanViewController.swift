//
//  ScanViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class ScanViewController: UIViewController, STSensorControllerDelegate {

    @IBAction func startScanButton(_ sender: Any) {
    }
    
    @IBAction func stopScanButton(_ sender: Any) {
    }
    
    @IBOutlet weak var nameLabel: UILabel!

    
    var sharedController: STSensorController
    
    required init?(coder decoder: NSCoder){
        
        sharedController = STSensorController.shared()
        super.init(coder: decoder)
        
        sharedController.delegate = self
        sharedController.initializeSensorConnection()
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //  viewDidAppear will run each time view appears. use this instead of viewDidLoad because the view isn't completely loaded yet and we want to change the label as it loads
        nameLabel.text = "Begin scanning " + athlete
    }
    
    
    // Test button method
    @objc func startButtonAction(sender: UIButton!){
        let streamingOptions: [AnyHashable: Any] = [
            kSTStreamConfigKey: NSNumber(value: STStreamConfig.depth640x480.rawValue as Int),
            kSTFrameSyncConfigKey: NSNumber(value: STFrameSyncConfig.depthAndRgb.rawValue as Int),
            kSTHoleFilterEnabledKey: true
        ]
        do {
            try sharedController.startStreaming(options: streamingOptions)
        } catch let error as NSError {
            print(error.description)
        }
    }
    @objc func stopButtonAction(sender: UIButton!){
        sharedController.stopStreaming()
    }
    
    
    // Necessary implemented Structure methods
    func sensorDidOutputSynchronizedInfraredFrame(_ irFrame: STInfraredFrame!, colorFrame: STColorFrame!) {
        
    }
    func sensorDidOutputInfraredFrame(_ irFrame: STInfraredFrame!) {
        
    }
    func sensorDidOutputSynchronizedDepthFrame(_ depthFrame: STDepthFrame!, colorFrame: STColorFrame!) {
        let alignedDepthFrame: STDepthFrame = depthFrame.registered(to: colorFrame)
        // OWN PROCESSING ON alignedDepthFrame
    }
    func sensorDidOutputDepthFrame(_ depthFrame: STDepthFrame!) {
        
    }
    
    func captureOutput(_output: AVCaptureOutput, didOutput
        sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
    {
        //Feed it to Structure sensor
        sharedController.frameSyncNewColorBuffer(sampleBuffer)
    }
    
    
    
    // Necessary methods to derive from STSensorControllerDelegate
    func sensorDidConnect() {
    }
    
    func sensorDidDisconnect() {
        
    }
    
    func sensorDidStopStreaming(_ reason: STSensorControllerDidStopStreamingReason) {
        
    }
    
    func sensorDidLeaveLowPowerMode() {
        
    }
    
    func sensorBatteryNeedsCharging() {
        
    }

}
