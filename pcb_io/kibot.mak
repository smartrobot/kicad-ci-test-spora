#!/usr/bin/make
# Automatically generated by KiBot from `spora_io.kibot.yaml`
KIBOT=kibot
DEBUG=
CONFIG=spora_io.kibot.yaml
SCH=spora_io.sch
PCB=spora_io.kicad_pcb
DEST=Fabrication
KIBOT_CMD=$(KIBOT) $(DEBUG) -c $(CONFIG) -e $(SCH) -b $(PCB) -d $(DEST)
LOGFILE=kibot_error.log

#
# Default target
#
all: run_erc run_drc Elecrow_gerbers Elecrow_drill Elecrow FusionPCB_gerbers FusionPCB_drill FusionPCB JLCPCB_gerbers JLCPCB_drill JLCPCB P-Ban_gerbers P-Ban_drill P-Ban PCBWay_gerbers PCBWay_drill PCBWay print_sch print_front print_bottom interactive_bom bom_html bom_xlsx bom_csv gerbers excellon_drill gerber_drills position

#
# SCH/PCB targets
#
pre_sch: run_erc

out_sch: print_sch bom_html bom_xlsx bom_csv

all_sch: pre_sch out_sch

pre_pcb: run_drc

out_pcb: Elecrow_gerbers Elecrow_drill Elecrow FusionPCB_gerbers FusionPCB_drill FusionPCB JLCPCB_gerbers JLCPCB_drill JLCPCB P-Ban_gerbers P-Ban_drill P-Ban PCBWay_gerbers PCBWay_drill PCBWay print_front print_bottom interactive_bom gerbers excellon_drill gerber_drills position

all_pcb: pre_pcb out_pcb

#
# Available targets (outputs)
#
run_erc: Fabrication/spora_io-erc_0.1.txt

run_drc: Fabrication/spora_io-drc_0.1.txt

Elecrow_gerbers: Fabrication/Elecrow/spora_io.GTL Fabrication/Elecrow/spora_io.GBL Fabrication/Elecrow/spora_io.GTO Fabrication/Elecrow/spora_io.GBO Fabrication/Elecrow/spora_io.GTS Fabrication/Elecrow/spora_io.GBS Fabrication/Elecrow/spora_io.GML

Elecrow_drill: Fabrication/Elecrow/spora_io.TXT Fabrication/Elecrow/spora_io-NPTH.TXT

Elecrow: Fabrication/Elecrow/spora_io-Elecrow_0.1.zip

FusionPCB_gerbers: Fabrication/FusionPCB/spora_io.GTL Fabrication/FusionPCB/spora_io.GBL Fabrication/FusionPCB/spora_io.GTO Fabrication/FusionPCB/spora_io.GBO Fabrication/FusionPCB/spora_io.GTS Fabrication/FusionPCB/spora_io.GBS Fabrication/FusionPCB/spora_io.GML

FusionPCB_drill: Fabrication/FusionPCB/spora_io.TXT

FusionPCB: Fabrication/FusionPCB/spora_io-FusionPCB_0.1.zip

JLCPCB_gerbers: Fabrication/JLCPCB/spora_io-F_Cu_0.1.gbr Fabrication/JLCPCB/spora_io-B_Cu_0.1.gbr Fabrication/JLCPCB/spora_io-F_SilkS_0.1.gbr Fabrication/JLCPCB/spora_io-B_SilkS_0.1.gbr Fabrication/JLCPCB/spora_io-F_Mask_0.1.gbr Fabrication/JLCPCB/spora_io-B_Mask_0.1.gbr Fabrication/JLCPCB/spora_io-Edge_Cuts_0.1.gbr

JLCPCB_drill: Fabrication/JLCPCB/spora_io-PTH.drl Fabrication/JLCPCB/spora_io-NPTH.drl

JLCPCB: Fabrication/JLCPCB/spora_io-JLCPCB_0.1.zip

P-Ban_gerbers: Fabrication/P-Ban/spora_io-F_Cu_0.1.gtl Fabrication/P-Ban/spora_io-B_Cu_0.1.gbl Fabrication/P-Ban/spora_io-F_SilkS_0.1.gto Fabrication/P-Ban/spora_io-B_SilkS_0.1.gbo Fabrication/P-Ban/spora_io-F_Mask_0.1.gts Fabrication/P-Ban/spora_io-B_Mask_0.1.gbs Fabrication/P-Ban/spora_io-Edge_Cuts_0.1.gm1 Fabrication/P-Ban/製造基準書.txt

P-Ban_drill: Fabrication/P-Ban/spora_io.drl Fabrication/P-Ban/spora_io-drill_map_0.1.gbr Fabrication/P-Ban/spora_io-drl.rpt

P-Ban: Fabrication/P-Ban/spora_io-P-Ban_0.1.zip

PCBWay_gerbers: Fabrication/PCBWay/spora_io.gtl Fabrication/PCBWay/spora_io.gbl Fabrication/PCBWay/spora_io.gto Fabrication/PCBWay/spora_io.gbo Fabrication/PCBWay/spora_io.gts Fabrication/PCBWay/spora_io.gbs Fabrication/PCBWay/spora_io.gtp Fabrication/PCBWay/spora_io.gbp Fabrication/PCBWay/spora_io.gm1

PCBWay_drill: Fabrication/PCBWay/spora_io.drl Fabrication/PCBWay/spora_io-NPTH.drl

PCBWay: Fabrication/PCBWay/spora_io-PCBWay_0.1.zip

print_sch: Fabrication/Schematic.pdf

print_sch_svg: Fabrication/Schematic.svg

print_front: Fabrication/PCB_Top.pdf

print_bottom: Fabrication/PCB_Bottom.pdf

interactive_bom: Fabrication/BoM/spora_io-ibom_0.1.html

bom_html: Fabrication/BoM/spora_io-bom_0.1.html

bom_xlsx: Fabrication/BoM/spora_io-bom_0.1.xlsx

bom_csv: Fabrication/BoM/spora_io-bom_0.1.csv

gerbers: Fabrication/Gerbers/spora_io-F_Cu_0.1.gbr Fabrication/Gerbers/spora_io-B_Cu_0.1.gbr Fabrication/Gerbers/spora_io-F_Paste_0.1.gbr Fabrication/Gerbers/spora_io-B_Paste_0.1.gbr Fabrication/Gerbers/spora_io-F_SilkS_0.1.gbr Fabrication/Gerbers/spora_io-B_SilkS_0.1.gbr Fabrication/Gerbers/spora_io-F_Mask_0.1.gbr Fabrication/Gerbers/spora_io-B_Mask_0.1.gbr Fabrication/Gerbers/spora_io-Dwgs_User_0.1.gbr Fabrication/Gerbers/spora_io-Edge_Cuts_0.1.gbr Fabrication/Gerbers/spora_io-B_Fab_0.1.gbr Fabrication/Gerbers/spora_io-job.gbrjob

excellon_drill: Fabrication/Drill/spora_io-PTH_drill_0.1.drl Fabrication/Drill/spora_io-PTH_drill_map_0.1.pdf Fabrication/Drill/spora_io-NPTH_drill_0.1.drl Fabrication/Drill/spora_io-NPTH_drill_map_0.1.pdf Fabrication/Drill/spora_io-drl.rpt

gerber_drills: Fabrication/Drill/spora_io-PTH_drill_0.1.gbr Fabrication/Drill/spora_io-NPTH_drill_0.1.gbr

position: Fabrication/Position/spora_io-top_pos_0.1.pos Fabrication/Position/spora_io-bottom_pos_0.1.pos

#
# Rules and dependencies
#
Fabrication/spora_io-erc_0.1.txt: spora_io.sch spora_io.kibot.yaml
	@$(KIBOT_CMD) -s run_drc -i 2>> $(LOGFILE)

Fabrication/spora_io-drc_0.1.txt: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s run_erc -i 2>> $(LOGFILE)

# Gerbers compatible with Elecrow
Fabrication/Elecrow/spora_io.GTL Fabrication/Elecrow/spora_io.GBL Fabrication/Elecrow/spora_io.GTO Fabrication/Elecrow/spora_io.GBO Fabrication/Elecrow/spora_io.GTS Fabrication/Elecrow/spora_io.GBS Fabrication/Elecrow/spora_io.GML: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all Elecrow_gerbers 2>> $(LOGFILE)

# Drill files compatible with Elecrow
Fabrication/Elecrow/spora_io.TXT Fabrication/Elecrow/spora_io-NPTH.TXT: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all Elecrow_drill 2>> $(LOGFILE)

# ZIP file for Elecrow
Fabrication/Elecrow/spora_io-Elecrow_0.1.zip: Fabrication/Elecrow/spora_io.GTL Fabrication/Elecrow/spora_io.GBL Fabrication/Elecrow/spora_io.GTO Fabrication/Elecrow/spora_io.GBO Fabrication/Elecrow/spora_io.GTS Fabrication/Elecrow/spora_io.GBS Fabrication/Elecrow/spora_io.GML Fabrication/Elecrow/spora_io.TXT Fabrication/Elecrow/spora_io-NPTH.TXT spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all Elecrow 2>> $(LOGFILE)

# Gerbers compatible with FusionPCB
Fabrication/FusionPCB/spora_io.GTL Fabrication/FusionPCB/spora_io.GBL Fabrication/FusionPCB/spora_io.GTO Fabrication/FusionPCB/spora_io.GBO Fabrication/FusionPCB/spora_io.GTS Fabrication/FusionPCB/spora_io.GBS Fabrication/FusionPCB/spora_io.GML: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all FusionPCB_gerbers 2>> $(LOGFILE)

# Drill files compatible with FusionPCB
Fabrication/FusionPCB/spora_io.TXT: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all FusionPCB_drill 2>> $(LOGFILE)

# ZIP file for FusionPCB
Fabrication/FusionPCB/spora_io-FusionPCB_0.1.zip: Fabrication/FusionPCB/spora_io.GTL Fabrication/FusionPCB/spora_io.GBL Fabrication/FusionPCB/spora_io.GTO Fabrication/FusionPCB/spora_io.GBO Fabrication/FusionPCB/spora_io.GTS Fabrication/FusionPCB/spora_io.GBS Fabrication/FusionPCB/spora_io.GML Fabrication/FusionPCB/spora_io.TXT spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all FusionPCB 2>> $(LOGFILE)

# Gerbers compatible with JLCPCB
Fabrication/JLCPCB/spora_io-F_Cu_0.1.gbr Fabrication/JLCPCB/spora_io-B_Cu_0.1.gbr Fabrication/JLCPCB/spora_io-F_SilkS_0.1.gbr Fabrication/JLCPCB/spora_io-B_SilkS_0.1.gbr Fabrication/JLCPCB/spora_io-F_Mask_0.1.gbr Fabrication/JLCPCB/spora_io-B_Mask_0.1.gbr Fabrication/JLCPCB/spora_io-Edge_Cuts_0.1.gbr: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all JLCPCB_gerbers 2>> $(LOGFILE)

# Drill files compatible with JLCPCB
Fabrication/JLCPCB/spora_io-PTH.drl Fabrication/JLCPCB/spora_io-NPTH.drl: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all JLCPCB_drill 2>> $(LOGFILE)

# ZIP file for JLCPCB
Fabrication/JLCPCB/spora_io-JLCPCB_0.1.zip: Fabrication/JLCPCB/spora_io-F_Cu_0.1.gbr Fabrication/JLCPCB/spora_io-B_Cu_0.1.gbr Fabrication/JLCPCB/spora_io-F_SilkS_0.1.gbr Fabrication/JLCPCB/spora_io-B_SilkS_0.1.gbr Fabrication/JLCPCB/spora_io-F_Mask_0.1.gbr Fabrication/JLCPCB/spora_io-B_Mask_0.1.gbr Fabrication/JLCPCB/spora_io-Edge_Cuts_0.1.gbr Fabrication/JLCPCB/spora_io-PTH.drl Fabrication/JLCPCB/spora_io-NPTH.drl spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all JLCPCB 2>> $(LOGFILE)

# Gerbers compatible with P-Ban
Fabrication/P-Ban/spora_io-F_Cu_0.1.gtl Fabrication/P-Ban/spora_io-B_Cu_0.1.gbl Fabrication/P-Ban/spora_io-F_SilkS_0.1.gto Fabrication/P-Ban/spora_io-B_SilkS_0.1.gbo Fabrication/P-Ban/spora_io-F_Mask_0.1.gts Fabrication/P-Ban/spora_io-B_Mask_0.1.gbs Fabrication/P-Ban/spora_io-Edge_Cuts_0.1.gm1 Fabrication/P-Ban/製造基準書.txt: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all P-Ban_gerbers 2>> $(LOGFILE)

# Drill files compatible with P-Ban
Fabrication/P-Ban/spora_io.drl Fabrication/P-Ban/spora_io-drill_map_0.1.gbr Fabrication/P-Ban/spora_io-drl.rpt: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all P-Ban_drill 2>> $(LOGFILE)

# ZIP file for P-Ban
Fabrication/P-Ban/spora_io-P-Ban_0.1.zip: Fabrication/P-Ban/spora_io-F_Cu_0.1.gtl Fabrication/P-Ban/spora_io-B_Cu_0.1.gbl Fabrication/P-Ban/spora_io-F_SilkS_0.1.gto Fabrication/P-Ban/spora_io-B_SilkS_0.1.gbo Fabrication/P-Ban/spora_io-F_Mask_0.1.gts Fabrication/P-Ban/spora_io-B_Mask_0.1.gbs Fabrication/P-Ban/spora_io-Edge_Cuts_0.1.gm1 Fabrication/P-Ban/製造基準書.txt Fabrication/P-Ban/spora_io.drl Fabrication/P-Ban/spora_io-drill_map_0.1.gbr Fabrication/P-Ban/spora_io-drl.rpt spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all P-Ban 2>> $(LOGFILE)

# Gerbers compatible with PCBWay
Fabrication/PCBWay/spora_io.gtl Fabrication/PCBWay/spora_io.gbl Fabrication/PCBWay/spora_io.gto Fabrication/PCBWay/spora_io.gbo Fabrication/PCBWay/spora_io.gts Fabrication/PCBWay/spora_io.gbs Fabrication/PCBWay/spora_io.gtp Fabrication/PCBWay/spora_io.gbp Fabrication/PCBWay/spora_io.gm1: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all PCBWay_gerbers 2>> $(LOGFILE)

# Drill files compatible with PCBWay
Fabrication/PCBWay/spora_io.drl Fabrication/PCBWay/spora_io-NPTH.drl: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all PCBWay_drill 2>> $(LOGFILE)

# ZIP file for PCBWay
Fabrication/PCBWay/spora_io-PCBWay_0.1.zip: Fabrication/PCBWay/spora_io.gtl Fabrication/PCBWay/spora_io.gbl Fabrication/PCBWay/spora_io.gto Fabrication/PCBWay/spora_io.gbo Fabrication/PCBWay/spora_io.gts Fabrication/PCBWay/spora_io.gbs Fabrication/PCBWay/spora_io.gtp Fabrication/PCBWay/spora_io.gbp Fabrication/PCBWay/spora_io.gm1 Fabrication/PCBWay/spora_io.drl Fabrication/PCBWay/spora_io-NPTH.drl spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all PCBWay 2>> $(LOGFILE)

# Print schematic (PDF)
Fabrication/Schematic.pdf: spora_io.sch spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all print_sch 2>> $(LOGFILE)

Fabrication/Schematic.svg: spora_io.sch spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all print_sch_svg 2>> $(LOGFILE)

# Print F.Cu+Dwgs.User
Fabrication/PCB_Top.pdf: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all print_front 2>> $(LOGFILE)

# Print B.Cu+Dwgs.User
Fabrication/PCB_Bottom.pdf: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all print_bottom 2>> $(LOGFILE)

# Interactive Bill of Materials (HTML)
Fabrication/BoM/spora_io-ibom_0.1.html: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all interactive_bom 2>> $(LOGFILE)

# Bill of Materials in HTML format
Fabrication/BoM/spora_io-bom_0.1.html: spora_io.sch spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all bom_html 2>> $(LOGFILE)

# Bill of Materials in XLSX format
Fabrication/BoM/spora_io-bom_0.1.xlsx: spora_io.sch spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all bom_xlsx 2>> $(LOGFILE)

# Bill of Materials in CSV format
Fabrication/BoM/spora_io-bom_0.1.csv: spora_io.sch spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all bom_csv 2>> $(LOGFILE)

# Gerbers for the board house
Fabrication/Gerbers/spora_io-F_Cu_0.1.gbr Fabrication/Gerbers/spora_io-B_Cu_0.1.gbr Fabrication/Gerbers/spora_io-F_Paste_0.1.gbr Fabrication/Gerbers/spora_io-B_Paste_0.1.gbr Fabrication/Gerbers/spora_io-F_SilkS_0.1.gbr Fabrication/Gerbers/spora_io-B_SilkS_0.1.gbr Fabrication/Gerbers/spora_io-F_Mask_0.1.gbr Fabrication/Gerbers/spora_io-B_Mask_0.1.gbr Fabrication/Gerbers/spora_io-Dwgs_User_0.1.gbr Fabrication/Gerbers/spora_io-Edge_Cuts_0.1.gbr Fabrication/Gerbers/spora_io-B_Fab_0.1.gbr Fabrication/Gerbers/spora_io-job.gbrjob: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all gerbers 2>> $(LOGFILE)

# Excellon drill files
Fabrication/Drill/spora_io-PTH_drill_0.1.drl Fabrication/Drill/spora_io-PTH_drill_map_0.1.pdf Fabrication/Drill/spora_io-NPTH_drill_0.1.drl Fabrication/Drill/spora_io-NPTH_drill_map_0.1.pdf Fabrication/Drill/spora_io-drl.rpt: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all excellon_drill 2>> $(LOGFILE)

# Gerber drill files
Fabrication/Drill/spora_io-PTH_drill_0.1.gbr Fabrication/Drill/spora_io-NPTH_drill_0.1.gbr: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all gerber_drills 2>> $(LOGFILE)

# Pick and place file
Fabrication/Position/spora_io-top_pos_0.1.pos Fabrication/Position/spora_io-bottom_pos_0.1.pos: spora_io.kicad_pcb spora_io.kibot.yaml
	@$(KIBOT_CMD) -s all position 2>> $(LOGFILE)

.PHONY: all pre_sch out_sch all_sch pre_pcb out_pcb all_pcb run_erc run_drc Elecrow_gerbers Elecrow_drill Elecrow FusionPCB_gerbers FusionPCB_drill FusionPCB JLCPCB_gerbers JLCPCB_drill JLCPCB P-Ban_gerbers P-Ban_drill P-Ban PCBWay_gerbers PCBWay_drill PCBWay print_sch print_front print_bottom interactive_bom bom_html bom_xlsx bom_csv gerbers excellon_drill gerber_drills position
