class Test {
    static function main() {
		var newline = "\n";
        var s = new neko.net.Socket();
        s.connect(new neko.net.Host("127.0.0.1"),6000);
        s.write("--cwd /my/project" + newline);
        s.write("myproject.hxml" + newline);
        s.write("\x00");
		
        var hasError = false;
        for (line in s.read().split(newline))
		{
            switch (line.charCodeAt(0)) {
				case 0x01: 
					neko.Lib.print(line.substr(1).split("\x01").join(newline));
				case 0x02: 
					hasError = true;
				default: 
					neko.io.File.stderr().writeString(line + newline);
            }
		}
        if (hasError) neko.Sys.exit(1);
    }
}
