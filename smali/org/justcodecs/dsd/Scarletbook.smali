.class public interface abstract Lorg/justcodecs/dsd/Scarletbook;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# static fields
.field public static final AUDIO_FRAME_DST_INFO_SIZE:S = 0x4s

.field public static final AUDIO_FRAME_INFO_SIZE:S = 0x3s

.field public static final AUDIO_PACKET_INFO_SIZE:S = 0x2s

.field public static final AUDIO_SECTOR_HEADER_SIZE:S = 0x1s

.field public static final CHARSET:[Ljava/lang/String;

.field public static final CHARSET1:[Ljava/lang/String;

.field public static final DATA_TYPE_AUDIO:I = 0x2

.field public static final DATA_TYPE_PADDING:I = 0x7

.field public static final DATA_TYPE_SUPPLEMENTARY:I = 0x3

.field public static final FRAME_FORMAT_DSD_3_IN_14:I = 0x2

.field public static final FRAME_FORMAT_DSD_3_IN_16:I = 0x3

.field public static final FRAME_FORMAT_DST:I = 0x0

.field public static final FRAME_SIZE_64:I = 0x1260

.field public static final GENRE:[Ljava/lang/String;

.field public static final MASTER_TOC_LEN:I = 0xa

.field public static final MAX_AREA_TOC_SIZE_LSN:I = 0x60

.field public static final MAX_CATEGORY_COUNT:I = 0x3

.field public static final MAX_CHANNEL_COUNT:I = 0x6

.field public static final MAX_DST_SIZE:I = 0x10000

.field public static final MAX_GENRE_COUNT:I = 0x1d

.field public static final MAX_LANGUAGE_COUNT:I = 0x8

.field public static final SACD_FRAME_RATE:I = 0x4b

.field public static final SACD_LSN_SIZE:I = 0x800

.field public static final SACD_PSN_SIZE:I = 0x810

.field public static final SACD_SAMPLING_FREQUENCY:I = 0x2b1100

.field public static final SAMPLES_PER_FRAME:I = 0x24c

.field public static final START_OF_FILE_SYSTEM_AREA:I = 0x0

.field public static final START_OF_MASTER_TOC:I = 0x1fe

.field public static final SUPPORTED_VERSION_MAJOR:I = 0x1

.field public static final SUPPORTED_VERSION_MINOR:I = 0x14

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14
    const-class v0, Lorg/justcodecs/dsd/Scarletbook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/justcodecs/dsd/Scarletbook;->TAG:Ljava/lang/String;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    const-string v1, "ISO646"

    aput-object v1, v0, v3

    .line 53
    const-string v1, "ISO8859_1"

    aput-object v1, v0, v4

    .line 54
    const-string v1, "RIS506"

    aput-object v1, v0, v5

    .line 55
    const-string v1, "KSC5601"

    aput-object v1, v0, v6

    .line 56
    const-string v1, "GB2312"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    .line 57
    const-string v2, "BIG5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 58
    const-string v2, "ISO8859_1_ESC"

    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lorg/justcodecs/dsd/Scarletbook;->CHARSET1:[Ljava/lang/String;

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US-ASCII"

    aput-object v2, v0, v1

    const-string v1, "ISO646-US"

    aput-object v1, v0, v3

    const-string v1, "ISO-8859-1"

    aput-object v1, v0, v4

    const-string v1, "x-SJIS_0213"

    aput-object v1, v0, v5

    const-string v1, "EUC-KR"

    aput-object v1, v0, v6

    .line 62
    const-string v1, "GB2312"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "BIG5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lorg/justcodecs/dsd/Scarletbook;->CHARSET:[Ljava/lang/String;

    .line 64
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Not used"

    aput-object v2, v0, v1

    const-string v1, "Not defined"

    aput-object v1, v0, v3

    const-string v1, "Adult Contemporary"

    aput-object v1, v0, v4

    const-string v1, "Alternative Rock"

    aput-object v1, v0, v5

    .line 65
    const-string v1, "Children\'s Music"

    aput-object v1, v0, v6

    const-string v1, "Classical"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Erotic"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 66
    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Operetta"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Pop Music"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 67
    const-string v2, "RAP"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Rock Music"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Rhythm & Blues"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Sound Effects"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Sound Track"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Spoken Word"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 68
    const-string v2, "World Music"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Blues"

    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lorg/justcodecs/dsd/Scarletbook;->GENRE:[Ljava/lang/String;

    .line 68
    return-void
.end method
