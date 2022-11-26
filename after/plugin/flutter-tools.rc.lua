local status, flutter = pcall(require, "flutter-tools")
if (not status) then
  print("flutter-tools load failed")
  return
end

flutter.setup {}
