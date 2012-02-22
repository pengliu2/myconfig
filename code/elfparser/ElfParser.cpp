
/* 
 written by balancesli 
 mail: balancesli@gmail.com 
*/

#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>
#include <elf.h>
#include <iostream>
#include "ElfParser.h"

using namespace std;

ElfParser :: ElfParser() : ShdrTab(NULL), ShStrTab(NULL), 
							StrTab(NULL),SymTab(NULL), PhdrTab(NULL)
{

}

ElfParser :: ElfParser(char * FileName) : ShdrTab(NULL),
			ShStrTab(NULL), StrTab(NULL), SymTab(NULL), PhdrTab(NULL)
{
	try
	{
		if((fd = open(FileName, O_RDONLY)) != -1)
		{
			read(fd, &Ehdr, sizeof(Elf32_Ehdr));
			GetShdrTab();
	//		if(Ehdr.e_type == ET_EXEC || Ehdr.e_type == ET_DYN)
	//		{
	//		}

			GetShStrTab();
			GetStrTab();
			GetSymTab();
			
			//GetPhdrTab();
			if(Ehdr.e_type == ET_EXEC || Ehdr.e_type == ET_DYN)
			{
				GetDynStrTab();
				GetDynSymTab();
			}
		}
		else
			throw fd;
	}
	catch(int fd)
	{
		cerr << "Open failure " << fd << endl;
	}
}

ElfParser :: ~ElfParser()
{
	close(fd);
	if(ShdrTab != NULL) 
		delete [] ShdrTab;
	if(PhdrTab != NULL) 
		delete [] PhdrTab;
	if(StrTab != NULL) 
		delete [] StrTab;
	if(ShStrTab != NULL) 
		delete [] ShStrTab;
	if(SymTab != NULL) 
		delete [] SymTab;
}

void ElfParser :: GetShdrTab()
{
	int i = 0;	
	ShdrTab = new Elf32_Shdr[Ehdr.e_shnum];
	lseek(fd, Ehdr.e_shoff, SEEK_SET);
	while(i < Ehdr.e_shnum) 
		read(fd, &ShdrTab[i++], sizeof(Elf32_Shdr));  
			
}

void ElfParser :: DispShdr()
{
	int i;
	char Tbuf[20];
	printf(" Section Header Table info \n");
	printf("------------------------------\n");

	fprintf(stdout, "%-7s  VirtAddr  FileOff  %8s  %-20s  %-10s  Alignment\n",
				            "Section", "Size", "Name", "Type");
					

	
	for(i = 0; i < Ehdr.e_shnum; i++)
    {
		/*		
		switch(i) 
		{
		case SHN_UNDEF :
		case SHN_LORESERVE:		
		case SHN_LOPROC :
		case SHN_HIPROC :
	    case SHN_ABS :
		case SHN_COMMON :
		case SHN_HIRESERVE :
			continue; 
		}
		*/

		memset(Tbuf, 0, sizeof(Tbuf));
		
		switch(ShdrTab[i].sh_type)
		{
		case SHT_NULL     :	 strcpy(Tbuf, "NULL"); 		break;
		case SHT_PROGBITS :  strcpy(Tbuf, "PROGBITS"); 	break;
		case SHT_SYMTAB   :  strcpy(Tbuf, "SYMTAB");	break; 
		case SHT_STRTAB   :  strcpy(Tbuf, "STRTAB");	break;
		case SHT_RELA     :  strcpy(Tbuf, "RELA"); 		break;
		case SHT_HASH     :  strcpy(Tbuf, "HASH"); 		break;
	    case SHT_DYNAMIC  :  strcpy(Tbuf, "DYNAMIC"); 	break;
		case SHT_NOTE     :  strcpy(Tbuf, "NOTE"); 		break;
		case SHT_NOBITS   :  strcpy(Tbuf, "NOBITS"); 	break;
		case SHT_REL      :  strcpy(Tbuf, "REL"); 		break;
		case SHT_SHLIB    :  strcpy(Tbuf, "SHLIB"); 	break;
		case SHT_DYNSYM   :  strcpy(Tbuf, "DYNSYM"); 	break;
		case SHT_LOPROC   :  strcpy(Tbuf, "LOPROC"); 	break;
		case SHT_HIPROC   :  strcpy(Tbuf, "HIPROC"); 	break;
		case SHT_LOUSER   :  strcpy(Tbuf, "LOUSER");	break;
		case SHT_HIUSER   :  strcpy(Tbuf, "HIUSER"); 	break;
		}
		
		/*	
		printf("Section flags : ");
		if(ShdrTab[i].sh_flags & SHF_WRITE)
			printf("WRITE "); 
		if(ShdrTab[i].sh_flags & SHF_ALLOC)
				printf("ALLOC ");
		if(ShdrTab[i].sh_flags & SHF_EXECINSTR)
				printf("EXEC ");
		if(ShdrTab[i].sh_flags & SHF_MASKPROC)
			printf("MASK ");
		putchar('\n');		
	*/		
		fprintf(stdout, "%08X  %08X  %08X  %8X  %-20s  %-10s  %08X\n", i, 
						ShdrTab[i].sh_addr, ShdrTab[i].sh_offset,
		                ShdrTab[i].sh_size, ShStrTab + ShdrTab[i].sh_name, 
	             		Tbuf, ShdrTab[i].sh_addralign);
		/*		
		printf("Section virtual addr at execution :0x%08d\n", ShdrTab[i].sh_addr);
		printf("Section file offset:%d\n", ShdrTab[i].sh_offset);
		printf("Section size in bytes : %d\n", ShdrTab[i].sh_size);                 
		printf("Link to another section : %d\n", ShdrTab[i].sh_link);               
		printf("Additional section information : %d\n", ShdrTab[i].sh_info);        
		printf("Section alignment : %d\n", ShdrTab[i].sh_addralign);
		printf("Entry size if section holds table : %d\n", ShdrTab[i].sh_entsize);
		printf("----------------------------------\n");
		*/
	}
	printf("----------------------------------------------------\n");
}

void ElfParser :: GetPhdrTab()
{
	int i = 0;	
	PhdrTab = new Elf32_Phdr[Ehdr.e_phnum];
	lseek(fd, Ehdr.e_phoff, SEEK_SET);
	while(i < Ehdr.e_phnum) 
		read(fd, &PhdrTab[i++], sizeof(Elf32_Phdr));
}

void ElfParser :: DispPhdr()
{
	int i = 0, num;
	char Tbuf[20];
	
	if(PhdrTab != NULL)
	{
		//fprintf(stdout, "%8s %8X %8X", );
		while(i < Ehdr.e_phnum)
		{
			memset(Tbuf, 0, sizeof(Tbuf));
			switch(PhdrTab[i].p_type)
			{
			case PT_NULL     :  strcpy(Tbuf, "NULL");    break;
			case PT_LOAD     :  strcpy(Tbuf, "LOAD");    break;		
			case PT_DYNAMIC  :  strcpy(Tbuf, "DYNAMIC"); break;
			case PT_INTERP   :  strcpy(Tbuf, "INTERP");  break;
			case PT_NOTE     :  strcpy(Tbuf, "NOTE");    break;
			case PT_SHLIB    :  strcpy(Tbuf, "SHLIB");   break;
			case PT_PHDR     :  strcpy(Tbuf, "PHDR");    break;
			case PT_LOPROC   :  strcpy(Tbuf, "LOPROC");  break;
			case PT_HIPROC   :  strcpy(Tbuf, "HIPROC");  break;
			}	
			fprintf(stdout, "%-10s %8X %8X %8X %8X %8X %8X %8X",
				  		Tbuf,               PhdrTab[i].p_offset,
				  		PhdrTab[i].p_vaddr, PhdrTab[i].p_paddr,
				  		PhdrTab[i].p_filesz, PhdrTab[i].p_memsz,
				  		PhdrTab[i].p_flags, PhdrTab[i].p_align
				    );
			
			i++;

		}
	}
}

void ElfParser :: DispStrTab()
{
	
}


void ElfParser :: GetStrTab()
{
	int i = 0, size;
	
	if(ShdrTab != NULL && ShStrTab != NULL)
	{
		while(strncmp(ShStrTab + ShdrTab[i++].sh_name, ".strtab", 7) != 0);
		size = ShdrTab[i - 1].sh_size;
		StrTab = new char[size];
		lseek(fd, ShdrTab[i - 1].sh_offset, SEEK_SET);
		read(fd, StrTab, size);
	}
}

void ElfParser :: GetShStrTab()
{
	if(ShdrTab != NULL)
	{
		int idx = Ehdr.e_shstrndx;
		if(ShdrTab != NULL)
		{
			int size = ShdrTab[idx].sh_size;
			ShStrTab = new char[size];
			lseek(fd, ShdrTab[idx].sh_offset, SEEK_SET);
			read(fd, ShStrTab, size);
		}
	}
}

void ElfParser :: GetDynStrTab()
{
	int i = 0, size;
    if(ShdrTab != NULL && ShStrTab != NULL)
	{
		while(strncmp(ShStrTab + ShdrTab[i++].sh_name, ".dynstr", 7) != 0);
		size = ShdrTab[i - 1].sh_size;
		DynStrTab = new char[size];
		lseek(fd, ShdrTab[i - 1].sh_offset, SEEK_SET);
		read(fd, DynStrTab, size);
	}
}

void ElfParser :: GetDynSymTab()
{
	int i = 0, num;

	if(ShdrTab != NULL)
	{
		while(ShdrTab[i++].sh_type != SHT_DYNSYM);
		
		lseek(fd, ShdrTab[i - 1].sh_offset, SEEK_SET);
		
		num = ShdrTab[i - 1].sh_size / sizeof(Elf32_Sym);
		
		DynSymTab = new Elf32_Sym[num];
		i = 0;
		while(i < num)
			read(fd, &DynSymTab[i++], sizeof(Elf32_Sym));	
	}

}

void ElfParser :: DispDynSymTab()
{
	int i = 0, num;
	char Tbuf[20], Bbuf[20];
	
	
	if(DynSymTab != NULL)
	{
		while(ShdrTab[i++].sh_type != SHT_DYNSYM);
		num = ShdrTab[i - 1].sh_size / sizeof(Elf32_Sym);
        printf("-----------------------------------------------\n");
        printf("        Dynamic  Symbol Table info             \n");
        printf("-----------------------------------------------\n");
        fprintf(stdout, "%-20s %-8s %-8s %-10s %-10s %-10s\n", "Name", "Value",
                                         "Size", "Type", "Bind", "Shndx");
		i = 0;
        while(i < num)
        {
        	memset(Tbuf, 0, sizeof(Tbuf));
          	memset(Bbuf, 0, sizeof(Bbuf));
          	switch(ELF32_ST_TYPE(DynSymTab[i].st_info))
          	{
          	case STT_NOTYPE  : strcpy(Tbuf, "NOTYPE"); break;
			case STT_OBJECT  : strcpy(Tbuf, "OBJECT"); break;
			case STT_FUNC    : strcpy(Tbuf, "FUNC"); break;
			case STT_SECTION : strcpy(Tbuf, "SECTION"); break;
			case STT_FILE    : strcpy(Tbuf, "FILE"); break;
			case STT_LOPROC  : strcpy(Tbuf, "LOPROC"); break;
			case STT_HIPROC  : strcpy(Tbuf, "HIPROC"); break;
			}
			
			switch(ELF32_ST_BIND(DynSymTab[i].st_info))
			{
			case STB_LOCAL  : strcpy(Bbuf, "LOCAL"); break;
		    case STB_GLOBAL : strcpy(Bbuf, "GLOBAL"); break;
   			case STB_WEAK   : strcpy(Bbuf, "WEAK"); break;
			case STB_LOPROC : strcpy(Bbuf, "LOPROC"); break;
    		case STB_HIPROC : strcpy(Bbuf, "HIPROC"); break;
  			}
		    printf("%-20s %08X %08X %-10s %-10s %08X\n",
			         DynStrTab + DynSymTab[i].st_name, DynSymTab[i].st_value,
			         DynSymTab[i].st_size, Tbuf, Bbuf, DynSymTab[i].st_shndx);
            i++;
	
		}

	}

}


void ElfParser :: GetSymTab()
{
	int i = 0, num;
	if(ShdrTab != NULL)
	{
		
		while(ShdrTab[i++].sh_type != SHT_SYMTAB);
		
		lseek(fd, ShdrTab[i - 1].sh_offset, SEEK_SET);
		
		num = ShdrTab[i - 1].sh_size / sizeof(Elf32_Sym);
		SymTab = new Elf32_Sym[num];	
		
		i = 0; 
		while(i < num)
			read(fd, &SymTab[i++], sizeof(Elf32_Sym));
	}
}

void ElfParser :: DispSymTab()
{
//	#define ELF32_ST_BIND(i)    ((i)>>4)
//  #define ELF32_ST_TYPE(i)    ((i)&0xf)
//	#define ELF32_ST_INFO(b, t) (((b)<<4)+((t)&0xf))
						
	int i = 0, num, shidx;
	char Tbuf[20];
	char Bbuf[20];
	Elf32_Sym t;
	if(ShdrTab != NULL && ShStrTab != NULL)
	{
		while(ShdrTab[i++].sh_type != SHT_SYMTAB);
		
		num = ShdrTab[i - 1].sh_size / sizeof(Elf32_Sym);
		
		if(SymTab != NULL)
		{
			i = 0;
			
			printf("		Symbol Table info					   \n");
			printf("-----------------------------------------------\n");

			fprintf(stdout, "%-20s %-8s %-8s %-10s %-10s %-10s\n", "Name", "Value", 
										"Size", "Type", "Bind", "Shndx");
			while(i < num)
			{
				
			//	shidx = SymTab[i].st_shndx;
				memset(Tbuf, 0, sizeof(Tbuf));
				memset(Bbuf, 0, sizeof(Bbuf));
				switch(ELF32_ST_TYPE(SymTab[i].st_info))
				{
				case STT_NOTYPE  : strcpy(Tbuf, "NOTYPE"); break;
				case STT_OBJECT  : strcpy(Tbuf, "OBJECT"); break;
				case STT_FUNC    : strcpy(Tbuf, "FUNC"); break;
				case STT_SECTION : strcpy(Tbuf, "SECTION"); break;
				case STT_FILE	 : strcpy(Tbuf, "FILE"); break;
				case STT_LOPROC  : strcpy(Tbuf, "LOPROC"); break;
				case STT_HIPROC  : strcpy(Tbuf, "HIPROC"); break;
				}
				switch(ELF32_ST_BIND(SymTab[i].st_info))
				{
				case STB_LOCAL  : strcpy(Bbuf, "LOCAL"); break;
				case STB_GLOBAL : strcpy(Bbuf, "GLOBAL"); break;
				case STB_WEAK   : strcpy(Bbuf, "WEAK"); break;
				case STB_LOPROC : strcpy(Bbuf, "LOPROC"); break;
			    case STB_HIPROC : strcpy(Bbuf, "HIPROC"); break;
				}
				
				printf("%-20s %08X %08X %-10s %-10s %08X\n", 
							StrTab + SymTab[i].st_name, SymTab[i].st_value, 
							SymTab[i].st_size, Tbuf, Bbuf, SymTab[i].st_shndx); 
				i++;
			}
		}		
	}
}

void ElfParser :: DispAllSectionName()
{
	int i = 0;
	
	printf("Section String Table info\n");
	printf("------------------------------------\n");	
	while(i < Ehdr.e_shnum)
		printf("%d\t %-20s\n", i, ShStrTab + ShdrTab[i++].sh_name);

	printf("------------------------------------\n");
}

void ElfParser :: DispEhdr()
{
	printf("--------------------------------------------------\n");
	printf("		ELF Header info for Object file  		  \n");
	printf("--------------------------------------------------\n");
	printf("%p %c%c%c\n", Ehdr.e_ident[EI_MAG0], Ehdr.e_ident[EI_MAG1], 
							Ehdr.e_ident[EI_MAG2], Ehdr.e_ident[EI_MAG3]);
	
	if(Ehdr.e_ident[EI_CLASS] == 1)
		printf("32-bits Objects\n");
	else
		printf("invalid object file\n");
	
	printf("ELF Data Encoding is : ");
	if(Ehdr.e_ident[EI_DATA] == 0) 
		printf("Invalid data encoding\n");
	if(Ehdr.e_ident[EI_DATA] == 1) 
		printf("ELFDATA2LSB\n");
	if(Ehdr.e_ident[EI_DATA] == 2)
		printf("ELFDATA2MSB\n");
	//printf("%u\n", Ehdr.e_ident[EI_VERSION]);
	printf("ELF header size in bytes : %d\n", Ehdr.e_ehsize);
	
	printf("Object file type : ");
	switch(Ehdr.e_type)
	{
	case ET_NONE   : printf("No file type\n"); break;
	case ET_REL    : printf("Relocatable file\n"); break;
	case ET_EXEC   : printf("Executable file\n"); break;
	case ET_DYN    : printf("Share file\n"); break;
	case ET_CORE   : printf("Core file\n"); break;
	case ET_LOPROC : printf("Processor-specific\n"); break;
	case ET_HIPROC : printf("Processor-specific\n"); break;
	}

	printf("Architecture : ");
	switch(Ehdr.e_machine)
	{
	case EM_NONE : printf("No machine \n"); break;
    case EM_M32  : printf("AT&T WE 3200\n"); break;
	case EM_SPARC: printf("SPARC\n"); break;
	case EM_386  : printf("Intel 80386\n"); break;
	case EM_68K  : printf("Motorola 68000\n"); break;
	case EM_88K  : printf("Motorola 88000\n"); break;
	case EM_860  : printf("Intel 80860\n"); break; 
	case EM_MIPS : printf("MIPS RS3000\n"); break;
	case EM_ARM  : printf("ARM\n"); break;
	}
	
	printf("Object file version : ");
	switch(Ehdr.e_version)
	{
	case EV_NONE : printf("Invalid version\n"); break;
	case EV_CURRENT : printf("%d\n",  EV_CURRENT); break;
	}
	
	printf("Entry point virtual address : 0x%08d\t", Ehdr.e_entry);
	printf("Processor-specific flags : %d\n", Ehdr.e_flags);
	
	printf("Program header table file offset : %d\n", Ehdr.e_phoff);
	printf("Prog header table entry size :%d\n", Ehdr.e_phentsize);      
	printf("Program header table entry count : %d\n", Ehdr.e_phnum);
	
	printf("Section header table file offset : %d\n", Ehdr.e_shoff);
	printf("Section header table entry size : %d\n", Ehdr.e_shentsize);        
   	printf("Section header table entry count : %d\n", Ehdr.e_shnum);
	
   	printf("Section header string table index : %d\n", Ehdr.e_shstrndx);

	printf("---------------------------------------------\n");
}

void ElfParser :: DispReloc()
{
	//#define ELF32_R_SYM(i)  ((i)>>8)
	//#define ELF32_R_TYPE(i) ((unsigned char)(i))
	//#define ELF32_R_INFO(s, t)  ((s)<<8+(unsigned char)(t))
	int i = 0, num;
	Elf32_Rel Rel;
	char Tbuf[20];
	while(ShdrTab[i++].sh_type != SHT_REL);
	num = ShdrTab[i - 1].sh_size / ShdrTab[i - 1].sh_entsize;
	lseek(fd, ShdrTab[i - 1].sh_offset, SEEK_SET);
	fprintf(stdout, "----------------------------------------\n");
	fprintf(stdout, " Item  Offset    Symbol (Value)   Type\n");
	fprintf(stdout, "----------------------------------------\n");
	i = 0;
	while(i < num)
	{
		read(fd, &Rel, sizeof(Elf32_Rel));
		memset(Tbuf, 0, sizeof(Tbuf));
		switch (ELF32_R_TYPE(Rel.r_info))
		{
		case R_386_NONE     : strcpy(Tbuf, "R_386_NONE");      	  break;
		case R_386_32       : strcpy(Tbuf, "R_386_32");	      	  break;
		case R_386_PC32     : strcpy(Tbuf, "R_386_PC32");		  break;
		case R_386_GOT32    : strcpy(Tbuf, "R_386_GOT32"); 		  break;
		case R_386_PLT32    : strcpy(Tbuf, "R_386_GOT32");        break;
		case R_386_COPY     : strcpy(Tbuf, "R_386_COPY");         break;
        case R_386_GLOB_DAT : strcpy(Tbuf, "R_386_GLOB_DAT");     break;
        case R_386_JMP_SLOT : strcpy(Tbuf, "R_386_JMP_SLOT");     break;
        case R_386_RELATIVE : strcpy(Tbuf, "R_386_RELATIVE");     break;
        case R_386_GOTOFF   : strcpy(Tbuf, "R_386_GOTOFF");       break;
        case R_386_GOTPC    : strcpy(Tbuf, "R_386_GOTPC");        break;
        }
	    fprintf(stdout, " %4d  %08X     %2d   %s\n",i, Rel.r_offset,
	              ELF32_R_SYM(Rel.r_info), Tbuf);

				  
	    //ELF32_R_SYM(Rel.r_info),
	           
		i++;

	}
	
}


void Usage()
{
	fprintf(stderr, "objdump -[optional] [inputfile]\n");

	fprintf(stderr, "-a, --archive-headers    Display archive header information\n");
	
	fprintf(stderr,	"-f, --file-headers       Display the contents of the overall"
				   					" file header\n");
	
	fprintf(stderr, "-p, --private-headers    Display object format specific file"
				   					" header contents\n");
	
	fprintf(stderr, "-h, --[section-]headers  Display the contents of the section"
				   					" headers\n");
	
	fprintf(stderr, "-x, --all-headers        Display the contents of all headers\n");
	
//	fprintf(stderr, "-d, --disassemble        Display assembler contents of "
//									" executable sections\n");
	
//	fprintf(stderr, "-D, --disassemble-all    Display assembler contents of all "
//									" sections\n");
	
//	fprintf(stderr, "-S, --source             Intermix source code with"
//				   					" disassembly\n");
	
//	fprintf(stderr, "-s, --full-contents      Display the full contents of all "
//									" sections requested\n");

//	fprintf(stderr, "-g, --debugging          Display debug information in"
//				   					" object file\n");	  
	
//	fprintf(stderr, "-e, --debugging-tags     Display debug information using"
//									" ctags style\n");

//	fprintf(stderr, "-G, --stabs              Display (in raw form) any STABS info"
//				   					" in the file\n");

	fprintf(stderr, "-t, --syms               Display the contents of the symbol"
				   					" table(s)\n");

	fprintf(stderr, "-T, --dynamic-syms       Display the contents of the dynamic"
				   					" symbol table\n");

	fprintf(stderr, "-r, --reloc              Display the relocation entries"
				   					" in the file\n");

	fprintf(stderr, "-R, --dynamic-reloc      Display the dynamic relocation"
				   					" entries in the file\n");
											 
}

void GetOpt(int ac, char * av[])
{
	
	if(ac < 2)
	{
		Usage();
		exit(-1);
	}	
	
	if(strcmp(av[1], "-a"))
	{
				
	}
	
	if(strcmp(av[1], "-f"))
	{

	}
	
	if(strcmp(av[1], "-p"))
	{

	}
	
	if(strcmp(av[1], "-h"))
	{

	}
	
	if(strcmp(av[1], "-x"))
	{

	}
	
	if(strcmp(av[1], "-t"))
	{

	}
	
	if(strcmp(av[1], "-T"))
	{

	}
	
	if(strcmp(av[1], "-r"))
	{

	}
	
	if(strcmp(av[1], "-R"))
	{

	}
}

int main(int ac, char * av[])
{
	GetOpt(ac, av);
	ElfParser * Ep = new ElfParser(av[1]);
	Ep->DispEhdr();
	Ep->DispAllSectionName();
	Ep->DispShdr();
	Ep->DispSymTab();
	Ep->DispDynSymTab();
	Ep->DispReloc();
	delete Ep;
	return 0;
}
															  
