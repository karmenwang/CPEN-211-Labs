/* Quartus II 64-Bit Version 15.0.0 Build 145 04/22/2015 Patches 0.01we SJ Web Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEMA5F31) Path("C:/Users/Myles/Documents/Karmen/CPEN 211/Labs/Lab4/output_files/") File("lab4_top.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
