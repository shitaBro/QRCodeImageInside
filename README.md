# QRCodeImageInside
中间带图片的二维码

![image](https://github.com/JarvisHot/QRCodeImageInside/raw/master/QRCode.jpg)
<pre><code> @[[QRCodeGenerator qrImageForString:@"Key" imageSize:400],
[QRCodeGenerator qrImageForString:@"key1" imageSize:400 Topimg:[UIImage imageNamed:@"super.jpg"]],
[QRCodeGenerator qrImageForString:@"key2" imageSize:400 withPointType:QRPointRect withPositionType:QRPositionNormal withColor:[UIColor yellowColor]],
[QRCodeGenerator qrImageForString:@"key3" imageSize:400 withPointType:QRPointRound withPositionType:QRPositionRound withColor:[UIColor redColor]],
[QRCodeGenerator qrImageForString:@"key4" imageSize:400 withPointType:QRPointRect withPositionType:QRPositionRound withColor:[UIColor blueColor]],
[QRCodeGenerator qrImageForString:@"key5" imageSize:400 withPointType:QRPointRound withPositionType:QRPositionNormal withColor:[UIColor purpleColor]]
</code></pre>

