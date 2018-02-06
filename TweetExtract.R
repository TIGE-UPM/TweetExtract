#Aplicacion para la extracción de tweets y su ordenación en una tabla
#Necesitaremos la instalación de estos dos paquetes
install.packages('twitteR')
install.packages('RoAuth')

#Importamos las librerias
library(twitteR)
library(ROAuth)

#A continuación introducir las claves y tockens de la aplicación de Twitter
#Sustituir XXXXXXXXXXXXXx por la clave en cuestión
#Claves
consumer_key <- "XXXXXXXXXXXXXXXXXXXXXXXX"
consumer_secret <-"XXXXXXXXXXXXXXXXXXXXXXXX"
access_tocken <-"XXXXXXXXXXXXXXXXXXXXXXXX"
access_secret <-"XXXXXXXXXXXXXXXXXXXXXXXX"

#Twitter authentication
#Es aconsejable pulsar "1" para que se almacenen las claves en el directorio de trabajo
setup_twitter_oauth(consumer_key, consumer_secret, access_tocken, access_secret)



#Descarga de Timeline

#Los Timelines que se descargan son los del Estudio que realizamos, cambiar en caso de que se desee realizar
#otro estudio diferente

#Se pone n=50 porque lo que analiza son los 50 tweets que hay en el timeline de la cuenta
#en cuestión, es decir, contabiliza tanto las publicaciones que se hacen como los RT de otras
#cuentas en el timeline de la cuenta.
#Nosotros queremos analizar el estado del timeline en un periodo de 1 semana, y estimamos que 
#en cada cuenta aparecen 50 publicaciones como maximo.
#El máximo valor que tiene n es 3200
#Mas adelante nos encargaremos de quitar las publicaciones RT

#Para que la aplicación funcione correctamente hay que ir ejecutando las siguientes líneas de codigo de
#30 en 30, es decir, de tweets1 a tweets30, de tweets31 a tweets60 y asi sucesivamente

tweets1 <- userTimeline("iff_csic", n=50)
tweets2 <- userTimeline("IFICorpuscular", n=50)
tweets3 <- userTimeline("BibliotecaImse", n=50)
tweets4 <- userTimeline("iaaucc", n=50)
tweets5 <- userTimeline("IFISC_mallorca", n=50)
tweets6 <- userTimeline("i3mupv", n=50)
tweets7 <- userTimeline("ITEFI_CSIC", n=50)
tweets8 <- userTimeline("DifusionIFCA", n=50)
tweets9 <- userTimeline("iSpaceSci", n=50)
tweets10 <- userTimeline("ebdonana", n=50)
tweets11 <- userTimeline("CREAF_ecologia", n=50)
tweets12 <- userTimeline("mbg_csic", n=50)
tweets13 <- userTimeline("IQOG_CSIC", n=50)
tweets14 <- userTimeline("ITQ_UPVCSIC", n=50)
tweets15 <- userTimeline("CENIM_CSIC", n=50)
tweets16 <- userTimeline("ICMSevilla", n=50)
tweets17 <- userTimeline("InstitutoCajal", n=50)
tweets18 <- userTimeline("NeuroAlc", n=50)
tweets19 <- userTimeline("IBV_CSIC", n=50)
tweets20 <- userTimeline("proyectosibgm", n=50)
tweets21 <- userTimeline("ibis_sevilla", n=50)
tweets22 <- userTimeline("ipbln_csic", n=50)
tweets23 <- userTimeline("IncipitCSIC", n=50)
tweets24 <- userTimeline("CIBER_ISCIII", n=50)
tweets25 <- userTimeline("CSICprotocolo", n=50)
tweets26 <- userTimeline("EnvejecerCSIC", n=50)
tweets27 <- userTimeline("PRUAB", n=50)
tweets28 <- userTimeline("ParqueCiencias", n=50)
tweets29 <- userTimeline("e_MTA", n=50)
tweets30 <- userTimeline("InNorMadrid", n=50)

#Ejecutar de 30 en 30 para que funcione correctamente
tweets31 <- userTimeline("CSIC_Intern", n=50)
tweets32 <- userTimeline("CSICGalicia", n=50)
tweets33 <- userTimeline("CSICCat", n=50)
tweets34 <- userTimeline("AragonCsic", n=50)
tweets35 <- userTimeline("DPE_CSIC", n=50)
tweets36 <- userTimeline("FGCSIC", n=50)
tweets37 <- userTimeline("uSIG_CCHS_CSIC", n=50)
tweets38 <- userTimeline("udtIA", n=50)
tweets39 <- userTimeline("sbu_csic", n=50)
tweets40 <- userTimeline("PoliticaMemoria", n=50)
tweets41 <- userTimeline("NRG__CSIC", n=50)
tweets42 <- userTimeline("LINC_Global", n=50)
tweets43 <- userTimeline("LEC_CSIC", n=50)
tweets44 <- userTimeline("laac_eea", n=50)
tweets45 <- userTimeline("MAR_CSIC", n=50)
tweets46 <- userTimeline("Demografia_CSIC", n=50)
tweets47 <- userTimeline("poblacion_csic", n=50)
tweets48 <- userTimeline("_pmmv_", n=50)
tweets49 <- userTimeline("RJBOTANICO", n=50)
tweets50 <- userTimeline("obsebre", n=50)
tweets51 <- userTimeline("MNCNcomunica", n=50)
tweets52 <- userTimeline("IQM_CSIC", n=50)
tweets53 <- userTimeline("IPE_CSIC", n=50)
tweets54 <- userTimeline("IPPCSIC", n=50)
tweets55 <- userTimeline("incarCSIC", n=50)
tweets56 <- userTimeline("IMEDEA_UIB_CSIC", n=50)
tweets57 <- userTimeline("IRI_robotics", n=50)
tweets58 <- userTimeline("IRNAS_CSIC", n=50)
tweets59 <- userTimeline("IQAC_CSIC", n=50)
tweets60 <- userTimeline("IREC_CSIC_UCLM", n=50)

#Ejecutar de 30 en 30 para que funcione correctamente
tweets61 <- userTimeline("IIM_CSIC", n=50)
tweets62 <- userTimeline("IIBmCSICUAM", n=50)
tweets63 <- userTimeline("IGeociencias", n=50)
tweets64 <- userTimeline("IHSM_CSIC_UMA", n=50)
tweets65 <- userTimeline("ift_uam_csic", n=50)
tweets66 <- userTimeline("iesa_csic", n=50)
tweets67 <- userTimeline("ICMAN_CSIC", n=50)
tweets68 <- userTimeline("_ICMAT", n=50)
tweets69 <- userTimeline("icvv_rioja", n=50)
tweets70 <- userTimeline("ICTJA_CSIC", n=50)
tweets71 <- userTimeline("IETorroja", n=50)
tweets72 <- userTimeline("ictp_promocion", n=50)
tweets73 <- userTimeline("icmmcsic", n=50)
tweets74 <- userTimeline("icmabCSIC", n=50)
tweets75 <- userTimeline("icvcsic", n=50)
tweets76 <- userTimeline("ibfg_es", n=50)
tweets77 <- userTimeline("IBMCP", n=50)
tweets78 <- userTimeline("iata_csic", n=50)
tweets79 <- userTimeline("IAS_CSIC", n=50)
tweets80 <- userTimeline("Ingenio_CsicUpv", n=50)
tweets81 <- userTimeline("ICMCSIC", n=50)
tweets82 <- userTimeline("IACT_divulga", n=50)
tweets83 <- userTimeline("EEZCSIC", n=50)
tweets84 <- userTimeline("EEAD_CSIC", n=50)
tweets85 <- userTimeline("CESGA_", n=50)
tweets86 <- userTimeline("ucccenquior", n=50)
tweets87 <- userTimeline("CNB_CSIC", n=50)
tweets88 <- userTimeline("redescna", n=50)
tweets89 <- userTimeline("cicCartuja", n=50)
tweets90 <- userTimeline("CIB_CSIC", n=50)

#Ejecutar de 30 en 30 para que funcione correctamente
tweets91 <- userTimeline("CICancer_com", n=50)
tweets92 <- userTimeline("IcccCardio", n=50)
tweets93 <- userTimeline("CEABCSIC", n=50)
tweets94 <- userTimeline("CCHS_CSIC", n=50)
tweets95 <- userTimeline("DCCientificaCBM", n=50)
tweets96 <- userTimeline("cabimer", n=50)
tweets97 <- userTimeline("CRAGENOMICA", n=50)
tweets98 <- userTimeline("DigitalCSIC", n=50)
tweets99 <- userTimeline("Bibtntcsic", n=50)
tweets100 <- userTimeline("bibgeo", n=50)
tweets101 <- userTimeline("Biqfr_CSIC", n=50)
tweets102 <- userTimeline("Biblioteca_CID", n=50)
tweets103 <- userTimeline("BiblioCampusCar", n=50)
tweets104 <- userTimeline("BibliotecaCAR", n=50)
tweets105 <- userTimeline("bibliotecasCSIC", n=50)
tweets106 <- userTimeline("ISQCH_Divulga", n=50)
tweets107 <- userTimeline("DifusionIFCA", n=50)
tweets108 <- userTimeline("divulgamar", n=50)
tweets109 <- userTimeline("coleccionesEBD", n=50)
tweets110 <- userTimeline("CafeScIFCA", n=50)
tweets111 <- userTimeline("CiudadCiencia", n=50)
tweets112 <- userTimeline("CienciatkCSIC", n=50)
tweets113 <- userTimeline("CasaCiencia_Sev", n=50)
tweets114 <- userTimeline("CSICdivulga", n=50)
tweets115 <- userTimeline("C_Astrobiologia", n=50)
tweets116 <- userTimeline("intaespana", n=50)
tweets117 <- userTimeline("CBGP_Madrid", n=50)
tweets118 <- userTimeline("IEOMurcia", n=50)
tweets119 <- userTimeline("ieo_baleares", n=50)
tweets120 <- userTimeline("IEOsantander", n=50)

#Ejecutar de 30 en 30 para que funcione correctamente
tweets121 <- userTimeline("IEO_GIJON", n=50)
tweets122 <- userTimeline("IEOVigo", n=50)
tweets123 <- userTimeline("IEOoceanografia", n=50)
tweets124 <- userTimeline("MuseoGeominero", n=50)
tweets125 <- userTimeline("Fund_CIEN", n=50)
tweets126 <- userTimeline("CNIC_CARDIO", n=50)
tweets127 <- userTimeline("CNIO_Cancer", n=50)
tweets128 <- userTimeline("Investenisciii", n=50)
tweets129 <- userTimeline("bvs_spain", n=50)
tweets130 <- userTimeline("BNCSisciii", n=50)
tweets131 <- userTimeline("IAC_Astrofisica", n=50)
tweets132 <- userTimeline("CETA_CIEMAT", n=50)
tweets133 <- userTimeline("psaciemat", n=50)
tweets134 <- userTimeline("CIEMAT_Moncloa", n=50)
tweets135 <- userTimeline("CSIC", n=50)
tweets136 <- userTimeline("cial_csic_uam", n=50)
tweets137 <- userTimeline("NanoCINN", n=50)
tweets138 <- userTimeline("IBE_Barcelona", n=50)
tweets139 <- userTimeline("ictan", n=50)

#-------Tablas de 1 a 30-----------------------
#Union de las tablas en una sola
tablaTweets1 <-rbind(tweets1,tweets2,tweets3,tweets4,tweets5,tweets6,tweets7,tweets8,tweets9,tweets10,tweets11,tweets12,tweets13,tweets14,tweets15,tweets16,tweets17,tweets18,tweets19,tweets20,tweets21,tweets22,tweets23,tweets24,tweets25,tweets26,tweets27,tweets28,tweets29,tweets30)
#Convertir tweets a data frame (es una tabla)
tablaTweets1.df <- twListToDF(tablaTweets1)
df.undup <- tablaTweets1.df[duplicated(tablaTweets1.df)==FALSE,]
#Especificamos como queremos que sea la tabla del dataframe (los campos que va a tener)
tablaDataset1<-df.undup[,c("id","created","screenName","favoriteCount","retweetCount","isRetweet","statusSource","text")]
#Visualizamos la tabla
View(tablaDataset1)

#Guardamos en csv
write.csv(tablaDataset1, file = "datasetTwitter1.csv")

#-------Tablas de 31 a 60--------------------------------------------
#Repetimos proceso para tablas de 31 a 60
#Union de las tablas en una sola
tablaTweets2 <-rbind(tweets31,tweets32,tweets33,tweets34,tweets35,tweets36,tweets37,tweets38,tweets39,tweets40,tweets41,tweets42,tweets43,tweets44,tweets45,tweets46,tweets47,tweets48,tweets49,tweets50,tweets51,tweets52,tweets53,tweets54,tweets55,tweets56,tweets57,tweets58,tweets59,tweets60)
#Convertir tweets a data frame (es una tabla)
tablaTweets2.df <- twListToDF(tablaTweets2)
df.undup <- tablaTweets2.df[duplicated(tablaTweets2.df)==FALSE,]
#Especificamos como queremos que sea la tabla del dataframe (los campos que va a tener)
tablaDataset2<-df.undup[,c("id","created","screenName","favoriteCount","retweetCount","isRetweet","statusSource","text")]
#Visualizamos la tabla
View(tablaDataset2)

#guardamos en csv
write.csv(tablaDataset2, file = "datasetTwitter2.csv")


#-------Tablas de 61 a 90------------------------------------------------------------------------------------------
#Repetimos proceso para tablas de 61 a 90
#Union de las tablas en una sola
tablaTweets3 <-rbind(tweets61,tweets62,tweets63,tweets64,tweets65,tweets66,tweets67,tweets68,tweets69,tweets70,tweets71,tweets72,tweets73,tweets74,tweets75,tweets76,tweets77,tweets78,tweets79,tweets80,tweets81,tweets82,tweets83,tweets84,tweets85,tweets86,tweets87,tweets88,tweets89,tweets90)
#Convertir tweets a data frame (es una tabla)
tablaTweets3.df <- twListToDF(tablaTweets3)
df.undup <- tablaTweets3.df[duplicated(tablaTweets3.df)==FALSE,]
#Especificamos como queremos que sea la tabla del dataframe (los campos que va a tener)
tablaDataset3<-df.undup[,c("id","created","screenName","favoriteCount","retweetCount","isRetweet","statusSource","text")]
#Visualizamos la tabla
View(tablaDataset3)

#guardamos en csv
write.csv(tablaDataset3, file = "datasetTwitter3.csv")

#-------Tablas de 91 a 120-----------------------------------
#Repetimos proceso para tablas de 91 a 120
#Union de las tablas en una sola
tablaTweets4 <-rbind(tweets91,tweets92,tweets93,tweets94,tweets95,tweets96,tweets97,tweets98,tweets99,tweets100,tweets101,tweets102,tweets103,tweets104,tweets105,tweets106,tweets107,tweets108,tweets109,tweets110,tweets111,tweets112,tweets113,tweets114,tweets115,tweets116,tweets117,tweets118,tweets119,tweets120)
#Convertir tweets a data frame (es una tabla)
tablaTweets4.df <- twListToDF(tablaTweets4)
df.undup <- tablaTweets4.df[duplicated(tablaTweets4.df)==FALSE,]
#Especificamos como queremos que sea la tabla del dataframe (los campos que va a tener)
tablaDataset4<-df.undup[,c("id","created","screenName","favoriteCount","retweetCount","isRetweet","statusSource","text")]
#Visualizamos la tabla
View(tablaDataset4)

#guardamos en csv
write.csv(tablaDataset4, file = "datasetTwitter4.csv")


#-------Tablas de 121 a 139-------------------------
#Repetimos proceso para tablas de 121 a 139
#Union de las tablas en una sola
tablaTweets5 <-rbind(tweets121,tweets122,tweets123,tweets124,tweets125,tweets126,tweets127,tweets128,tweets129,tweets130,tweets131,tweets132,tweets133,tweets134,tweets135,tweets136,tweets137,tweets138,tweets139)
#Convertir tweets a data frame (es una tabla)
tablaTweets5.df <- twListToDF(tablaTweets5)
df.undup <- tablaTweets5.df[duplicated(tablaTweets5.df)==FALSE,]
#Especificamos como queremos que sea la tabla del dataframe (los campos que va a tener)
tablaDataset5<-df.undup[,c("id","created","screenName","favoriteCount","retweetCount","isRetweet","statusSource","text")]
#Visualizamos la tabla
View(tablaDataset5)

#guardamos en csv
write.csv(tablaDataset5, file = "datasetTwitter5.csv")











