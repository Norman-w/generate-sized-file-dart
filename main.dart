import 'dart:io';
import 'dart:typed_data';

void main() async {
  // 获取当前用户的主目录
  final home = Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'];
  if (home == null) {
    print('无法确定主目录。');
    return;
  }

  // 定义文件路径
  final filePath = '$home/Desktop/large_file.bin';

  // 创建文件
  final file = File(filePath);

  // 创建一个23 * 1024 * 1024字节的缓冲区
  final buffer = Uint8List(23 * 1024 * 1024);

  // 将缓冲区写入文件
  await file.writeAsBytes(buffer);

  print('文件已创建在 $filePath');
}