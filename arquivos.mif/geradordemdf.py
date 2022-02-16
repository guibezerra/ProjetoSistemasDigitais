import struct

def mifgeneration(filename,data):
	depth = len(data)
	fid = open(filename + ".mif",'w')
	fid.write("WIDTH=32;\n")
	fid.write("DEPTH="+str(depth)+";\n")
	fid.write("ADDRES_RADIX=UNS;\n")
	fid.write("DATA_RADIX=HEX;\n")
	fid.write("CONTENT BEGIN\n")
	for i in range(depth):
		fid.write(str(i)+" : "+float_to_hex(data[i])[2:]+";\n")
	fid.write("END;")
	return

def float_to_hex(f):
	 return hex(struct.unpack('<I', struct.pack('<f', f))[0])

filename = "w"
data = [-0.22,0.1,1.1,-0.90]

mifgeneration(filename,data)


