//
//  MainViewController.swift
//  Brain Master
//
//  Created by Navjot on 12/11/17.
//  Copyright © 2017 Sopan. All rights reserved.
//

import UIKit
import AVFoundation


class MainViewController: UIViewController{

    var indexv:String!
    var score:Float = 0
    var AudioPlayer = AVAudioPlayer()
  var WAudioPlayer = AVAudioPlayer()
    
    var b:Bool = false
    var b12:Bool = false

    
    var count:Int = 0
    var x:Int = 0
    var someInts = [Int](repeating: 0, count: 3)
    var q = [String]()
    var b1 = [String]()
    var b2 = [String]()
    var b3 = [String]()
    var b4 = [String]()
    var ans = [Int](repeating: 0, count: 7)
    
    @IBOutlet weak var t1: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
     @IBOutlet weak var ques: UILabel!
     @IBOutlet weak var scr: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        t1.text = "Sopan"
        
        do{
            AudioPlayer = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath: Bundle.main.path(forResource: "right", ofType: "mp3")!))
            AudioPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        do{
            WAudioPlayer = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath: Bundle.main.path(forResource: "wrong1", ofType: "mp3")!))
            WAudioPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if (indexv == "0") {
            x = 10000;
            
            q.append( "Two angles of a triangle measure 15° and 85 °. What is the measure for the third angle?")
            b1.append("  50°")
            b2.append("  80°  ")
            b3.append(" 55° ")
            b4.append("90° ")
            ans[0] = 2;
            
            q.append("If y(x-1)=z then x= ");
            b1.append(" z/y + 1 ")
            b2.append("  y(z-1) ");
            b3.append("z(y-1)")
            b4.append("1-zy");
            ans[1] = 1;
            
            q.append(" Which of the following is equal to 5.93 x 10^-2")
            b1.append("  0.00593 ")
            b2.append("  593  ")
            b3.append("59300")
            b4.append("0.0593 ")
            ans[2] = 4;
            
            q.append(" Which of the following fractions is equal to 5/6?")
            b1.append("  40/54 ")
            b2.append("  20/30  ")
            b3.append("25/30 ")
            b4.append("95/119 ")
            ans[3] = 3;
            
            q.append( " If 3x=6x-15 then x + 8 =")
            b1.append("  5 ")
            b2.append("  13  ")
            b3.append("  -5  ")
            b4.append("  3  ")
            ans[4] = 2;
            
            q.append( " If 3x=6x-15 then x + 8 =")
            b1.append("  5 ")
            b2.append("  13  ")
            b3.append("  -5  ")
            b4.append("  3  ")
            ans[4] = 2;
        }
        else if (indexv == "5"){
            indexv = "0";
            x = 20000;
            q.append("Which is the greatest number?")
            b1.append(" 1/4 of 236  ")
            b2.append("  1/9 of 504   ")
            b3.append("1/16 of 1028")
            b4.append(" 1/3 of 741 ")
            ans[0] = 4;
            
            q.append("  A man bought a flat for Rs. 8,20,000. He borrowed 55% of this money from a bank. How much money did he borrow from the bank?")
            b1.append("   Rs. 4,51,000 ")
            b2.append("   Rs. 4,52,000  ")
            b3.append(" Rs. 4,53,000")
            b4.append(" Rs. 4,55,000 ")
            ans[1] = 1;
            
            q.append(" A primary school had an enrollment of 850 pupils in January 1970. In January 1980 the enrollment was 1,120; What was the percentage increase for the")
            b1.append("  33.56% ")
            b2.append("  34.76%  ")
            b3.append("31.76%")
            b4.append("30.55%")
            ans[2] = 3;
            
            q.append(" Which number will come next?")
            b1[4] = "  30 ";
            b2[4] = "  28 ";
            b3[4] = "54";
            b4[4] = "48 ";
            ans[3] = 2;
            
            q[3] = "  If a car is sold for Rs.50000 the profit is 17   percent,   what   would   be   profit percentage if sold for Rs. 47000";
            b1[3] = "  16.20% ";
            b2[3] = "  14.50%  ";
            b3[3] = "14.85%";
            b4[3] = "15.98% ";
            ans[4] = 4;
        }
        else if (indexv == "10"){
            indexv = "0";
            x = 30000;
            q[0] = " If Logx (1 / 8) = - 3 / 2, then x is equal to  ";
            b1[0] = "  -4 ";
            b2[0] = "  4 ";
            b3[0] = "1/4";
            b4[0] = "10 ";
            ans[0] = 2;
            
            q[1] = " If the graph of y = f(x) is transformed into the graph of 2y - 6 = - 4 f(x - 3), point (a , b) on the graph of y = f(x) becomes point (A , B) on the graph of 2y - 6 = - 4 f(x - 3) where A and B are given by ";
            b1[1] = "  A = a - 3, B = b  ";
            b2[1] = "  A = a - 3, B = b  ";
            b3[1] = "A = a + 3, B = -2 b ";
            b4[1] = " A = a + 3, B = -2 b +3 ";
            ans[1] = 4;
            
            q[2] = " When a parabola represented by the equation y - 2x 2 = 8 x + 5 is translated 3 units to the left and 2 units up, the new parabola has its vertex at ";
            b1[2] = "  (-5 , -1)  ";
            b2[2] = "  (-5 , -5) ";
            b3[2] = "(-1 , -3) ";
            b4[2] = "(-2 , -3) ";
            ans[2] = 1;
            
            q[3] = " The probability that an electronic device produced by a company does not function properly is equal to 0.1. If 10 devices are bought, then the probability, to the nearest thousandth, that 7 devices function properly is ";
            b1[3] = "  0  ";
            b2[3] = "  0.478 ";
            b3[3] = "0.057 ";
            b4[3] = " 0.001 ";
            ans[3] = 3;
            
            q[4] = " When a metallic ball bearing is placed inside a cylindrical container, of radius 2 cm, the height of the water, inside the container, increases by 0.6 cm. The radius, to the nearest tenth of a centimeter, of the ball bearing is ";
            b1[4] = "  1 cm ";
            b2[4] = "  1.2 cm  ";
            b3[4] = "52 cm ";
            b4[4] = "0.6 cm ";
            ans[4] = 2;
        }
            
            
            
        else if(indexv == "15"){
            indexv = "0";
            x = 10000;
            q.append(" Grand Central Terminal, Park Avenue, New York is the world's")
            b1.append("  largest railway station ")
            b2.append("  highest railway station ");
            b3.append( "longest railway station")
            b4.append("None of the above ")
            ans[0] = 1;
            
            q.append(" For which of the following disciplines is Nobel Prize awarded?")
            b1.append(" Physics and Chemistry ")
            b2.append("  Physiology or Medicine ")
            b3.append("Literature, Peace and Economics")
            b4.append("All of the above ")
            ans[1] = 4;
            
            q.append(" Hitler party which came into power in 1933 is known as")
            b1.append(" Labour Party ")
            b2.append("  Nazi Party ")
            b3.append("Ku-Klux-Klan")
            b4.append("Democratic Party ")
            ans[2] = 2;
            
            q.append(" FFC stands for")
            b1.append("Foreign Finance Corporation")
            b2.append("Film Finance Corporation")
            b3.append("Federation of Football Council")
            b4.append("None of the above ")
            ans[3] = 2;
            
            q.append("The Battle of Plassey was fought in");
            b1.append(" 1757")
            b2.append(" 1782 ")
            b3.append("1748")
            b4.append("1764")
            ans[4] = 1;
            
            
            q.append("The Battle of Plassey was fought in");
            b1.append(" 1757")
            b2.append(" 1782 ")
            b3.append("1748")
            b4.append("1764")
            ans[4] = 1;
            
        }
        else if (indexv == "20"){
            indexv = "0";
            x = 20000;
            q.append("The trident-shaped symbol of Buddhism does not represent")
            b1.append("Nirvana")
            b2.append("Sangha")
            b3.append("Buddha")
            b4.append("Dhamma")
            ans[0] = 1;
            
            q.append(" Golf player Vijay Singh belongs to which country?")
            b1.append(" USA")
            b2.append("  UK ")
            b3.append("India")
            b4.append("Fiji")
            ans[1] = 4;
            
            q.append(" Coral reefs in India can be found in")
            b1.append(" the coast of Orissa")
            b2.append("  Rameshwaram")
            b3.append("Waltair")
            b4.append(" Trivandrum ")
            ans[2] = 2;
            
            q.append(" The use of Kharoshti in ancient Indian architecture is the result of India's contact with")
            b1.append( " Central Asia")
            b2.append("  Iran")
            b3.append("Greece")
            b4.append(" China ")
            ans[3] = 3;
            
            q.append(" The victories of Karikala are well portrayed in")
            b1.append(" Palamoli")
            b2.append("  Aruvanad")
            b3.append( "    Pattinappalai")
            b4.append(" Padirrupattu")
            ans[4] = 3;
            
            q.append(" The victories of Karikala are well portrayed in")
            b1.append(" Palamoli")
            b2.append("  Aruvanad")
            b3.append( "Pattinappalai")
            b4.append(" Padirrupattu")
            ans[4] = 3;
        }
        else if(indexv == "25"){
            indexv = "0";
            x = 30000;
            q.append("The Indian delegation to the first World Conference on Human Rights was led by")
            b1.append("Dr. Manmohan Singh")
            b2.append("Farooq Abdullah")
            b3.append("Dinesh singh")
            b4.append("Alam Khan")
            ans[0] = 1;
            
            q.append("Todar Mal was associated with")
            b1.append("music")
            b2.append("literature")
            b3.append("finance")
            b4.append("law")
            ans[1] = 3;
            
            q.append("Amnesty International is an organisation associated with which of the following fields?")
            b1.append("Protection of Cruelty to animals")
            b2.append("Environment protection")
            b3.append("Protection of human rights")
            b4.append("Protection of historic monuments")
            ans[2] = 3;
            
            q.append("Which one of the following is not related to disarmament?")
            b1.append("SALT")
            b2.append("NPT")
            b3.append("CTBT")
            b4.append("NATO")
            ans[3] = 4;
            
            q.append("Wadia Institute of Himalayan Geology is located at")
            b1.append("DELHI")
            b2.append("Shimla")
            b3.append("DEHRADUN")
            b4.append("KULU")
            ans[4] = 3;
            
            q.append("Wadia Institute of Himalayan Geology is located at")
            b1.append("DELHI")
            b2.append("Shimla")
            b3.append("DEHRADUN")
            b4.append("KULU")
            ans[4] = 3;
            
        }
            
        else{}
        updatecon()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func click1(_ sender: UIButton){
        check(i: 1)
    }
    @IBAction func click2(_ sender: UIButton){
        check(i: 2)
    }
    @IBAction func click13(_ sender: UIButton){
        if (b12){
         exit(0)
        
            //let alert = UIAlertController(title: "Exit", message: "Are you sure?", preferredStyle: .alert)
            
        
        
        }
        else {
        check(i: 3)
        }
    }
    @IBAction func click4(_ sender: UIButton){
        if (b){
         lastSegue()
        }
        else{
        check(i: 4)
        }
        
    }
    
    func lastSegue(){
        self.performSegue(withIdentifier: "LastSu", sender: self)
    }
    
    
    func check(i: Int) -> Int {
        var index = (indexv as NSString).integerValue
        if(ans[index] == (i))
        {
            
            if AudioPlayer.isPlaying{
                AudioPlayer.stop()
                AudioPlayer.play()
            }
            else  if WAudioPlayer.isPlaying{
                WAudioPlayer.stop()
                AudioPlayer.play()
            }
            else{
                AudioPlayer.play()
            }
            score += 1
            index += 1
            count += 1;
            indexv = String(index)
            updatecon();
            
            
        }
            
        else{
            if AudioPlayer.isPlaying{
                AudioPlayer.stop()
                WAudioPlayer.play()
            }
            else  if WAudioPlayer.isPlaying{
                WAudioPlayer.stop()
                WAudioPlayer.play()
            }
            else{
                WAudioPlayer.play()
            }
            index += 1
            count += 1
            score = score - 0.25
            indexv = String(index)
            updatecon();
        }
        
        
        if(count == 5){
            
            t1.text = ("Thankyou For Taking Quiz Your Final Score is  " + String(score));
            
            btn4.setTitle("Continue", for: .normal);
            btn3.setTitle("Exit", for: .normal);
          
            ans[index]=5;
            b = true
            b12 = true
            hide()
        }
        indexv = String(index)
        
        return 0
    }
    
    
    func hide(){
        btn1.isHidden = true
       // btn3.isHidden = true
        btn2.isHidden = true
        scr.isHidden = true
        ques.isHidden = true
        
    }
    
    func updatecon(){
         scr.text = ("Score " + String(score));
        ques.text = ("Question" + String(count+1));
        t1.text = q[Int(indexv)!]
        btn1.setTitle(b1[Int(indexv)!], for: .normal)
        btn2.setTitle(b2[Int(indexv)!], for: .normal)
        btn3.setTitle(b3[Int(indexv)!], for: .normal)
        btn4.setTitle(b4[Int(indexv)!], for: .normal)
        btn1.setTitle(b1[Int(indexv)!], for: .normal)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
