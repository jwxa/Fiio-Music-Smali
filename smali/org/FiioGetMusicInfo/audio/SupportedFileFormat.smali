.class public final enum Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;
.super Ljava/lang/Enum;
.source "SupportedFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AAC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum AIF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum AIFC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum AIFF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum APE:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum BMP:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum CUE:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum DFF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum DSF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum FLAC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum ISO:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum JPG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum M4A:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum M4B:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum M4P:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum MP3:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum MP4:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum OGG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum PNG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum RA:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum RM:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum WAV:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

.field public static final enum WMA:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;


# instance fields
.field private filesuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "OGG"

    const-string v2, "ogg"

    invoke-direct {v0, v1, v4, v2}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->OGG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 10
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "MP3"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v5, v2}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->MP3:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 11
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "FLAC"

    const-string v2, "flac"

    invoke-direct {v0, v1, v6, v2}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->FLAC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 12
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "MP4"

    const-string v2, "mp4"

    invoke-direct {v0, v1, v7, v2}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->MP4:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 13
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "M4A"

    const-string v2, "m4a"

    invoke-direct {v0, v1, v8, v2}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4A:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 14
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "M4P"

    const/4 v2, 0x5

    const-string v3, "m4p"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4P:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 15
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "WMA"

    const/4 v2, 0x6

    const-string v3, "wma"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->WMA:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 16
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "WAV"

    const/4 v2, 0x7

    const-string v3, "wav"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->WAV:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 17
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "RA"

    const/16 v2, 0x8

    const-string v3, "ra"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->RA:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 18
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "RM"

    const/16 v2, 0x9

    const-string v3, "rm"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->RM:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 19
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "M4B"

    const/16 v2, 0xa

    const-string v3, "m4b"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4B:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 20
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "AIF"

    const/16 v2, 0xb

    const-string v3, "aif"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 21
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "AIFF"

    const/16 v2, 0xc

    const-string v3, "aiff"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIFF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 22
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "AIFC"

    const/16 v2, 0xd

    const-string v3, "aifc"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIFC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 23
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "DSF"

    const/16 v2, 0xe

    const-string v3, "dsf"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->DSF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 24
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "DFF"

    const/16 v2, 0xf

    const-string v3, "dff"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->DFF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 25
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "AAC"

    const/16 v2, 0x10

    const-string v3, "aac"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AAC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 26
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "APE"

    const/16 v2, 0x11

    const-string v3, "ape"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->APE:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 27
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "JPG"

    const/16 v2, 0x12

    const-string v3, "jpg"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->JPG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 28
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "PNG"

    const/16 v2, 0x13

    const-string v3, "png"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->PNG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 29
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "BMP"

    const/16 v2, 0x14

    const-string v3, "bmp"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->BMP:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 30
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "CUE"

    const/16 v2, 0x15

    const-string v3, "cue"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->CUE:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 31
    new-instance v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    const-string v1, "ISO"

    const/16 v2, 0x16

    const-string v3, "iso"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->ISO:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    .line 7
    const/16 v0, 0x17

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->OGG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->MP3:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->FLAC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->MP4:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v1, v0, v7

    sget-object v1, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4A:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4P:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->WMA:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->WAV:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->RA:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->RM:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->M4B:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIFF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AIFC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->DSF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->DFF:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->AAC:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->APE:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->JPG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->PNG:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->BMP:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->CUE:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->ISO:Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getFilesuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    return-object v0
.end method
