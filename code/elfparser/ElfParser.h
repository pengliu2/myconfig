#ifndef ELF_PARSER_H
#define ELF_PARSER_H

class ElfParser
{
private :
	int fd;
	Elf32_Ehdr Ehdr;
	Elf32_Shdr * ShdrTab;
	Elf32_Phdr * PhdrTab;
	Elf32_Sym * SymTab;
	Elf32_Sym * DynSymTab;
	char * ShStrTab;
	char * StrTab;
	char * DynStrTab;
protected :
	void GetShdrTab();
	void GetPhdrTab();
	void GetShStrTab();
	void GetStrTab();
	void GetDynStrTab();
	void GetSymTab();
	void GetDynSymTab();
	void GetSectionName();
public :
	ElfParser(); 
	ElfParser(char * FileName);
	~ElfParser();
	
	void DispEhdr();
	void DispShdr();
	void DispPhdr();
	
	void DispStrTab();
	void DispSymTab();
	
	
	void DispDynSymTab();
	void DispAllSectionName();
	void DispReloc();
};

#endif
