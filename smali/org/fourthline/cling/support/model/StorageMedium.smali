.class public final enum Lorg/fourthline/cling/support/model/StorageMedium;
.super Ljava/lang/Enum;
.source "StorageMedium.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/StorageMedium;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CD_DA:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum CD_R:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum CD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum CD_RW:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DAT:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DV:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_MINUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_PLUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_R:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_RAM:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_VIDEO:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum D_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum HDD:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum HI8:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum LD:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum MD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum MD_PICTURE:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum MICRO_MV:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum MINI_DV:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum NETWORK:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum NONE:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum SACD:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum S_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum UNKNOWN:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VENDOR_SPECIFIC:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VHS:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VHSC:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VIDEO8:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VIDEO_CD:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum W_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

.field private static byProtocolString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/StorageMedium;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->UNKNOWN:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DV"

    invoke-direct {v0, v1, v5}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DV:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "MINI_DV"

    const-string v2, "MINI-DV"

    invoke-direct {v0, v1, v6, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->MINI_DV:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "VHS"

    invoke-direct {v0, v1, v7}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "W_VHS"

    const-string v2, "W-VHS"

    invoke-direct {v0, v1, v8, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->W_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "S_VHS"

    const/4 v2, 0x5

    const-string v3, "S-VHS"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->S_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 34
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "D_VHS"

    const/4 v2, 0x6

    const-string v3, "D-VHS"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->D_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 35
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "VHSC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->VHSC:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "VIDEO8"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->VIDEO8:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "HI8"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->HI8:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 38
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "CD_ROM"

    const/16 v2, 0xa

    const-string v3, "CD-ROM"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->CD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 39
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "CD_DA"

    const/16 v2, 0xb

    const-string v3, "CD-DA"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->CD_DA:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 40
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "CD_R"

    const/16 v2, 0xc

    const-string v3, "CD-R"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->CD_R:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 41
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "CD_RW"

    const/16 v2, 0xd

    const-string v3, "CD-RW"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->CD_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 42
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "VIDEO_CD"

    const/16 v2, 0xe

    const-string v3, "VIDEO-CD"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->VIDEO_CD:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 43
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "SACD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->SACD:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 44
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "MD_AUDIO"

    const/16 v2, 0x10

    const-string v3, "M-AUDIO"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->MD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 45
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "MD_PICTURE"

    const/16 v2, 0x11

    const-string v3, "MD-PICTURE"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->MD_PICTURE:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 46
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DVD_ROM"

    const/16 v2, 0x12

    const-string v3, "DVD-ROM"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DVD_VIDEO"

    const/16 v2, 0x13

    const-string v3, "DVD-VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_VIDEO:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DVD_R"

    const/16 v2, 0x14

    const-string v3, "DVD-R"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_R:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DVD_PLUS_RW"

    const/16 v2, 0x15

    const-string v3, "DVD+RW"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_PLUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 50
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DVD_MINUS_RW"

    const/16 v2, 0x16

    const-string v3, "DVD-RW"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_MINUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 51
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DVD_RAM"

    const/16 v2, 0x17

    const-string v3, "DVD-RAM"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_RAM:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 52
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DVD_AUDIO"

    const/16 v2, 0x18

    const-string v3, "DVD-AUDIO"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 53
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "DAT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->DAT:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 54
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "LD"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->LD:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 55
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "HDD"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->HDD:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 56
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "MICRO_MV"

    const/16 v2, 0x1c

    const-string v3, "MICRO_MV"

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->MICRO_MV:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 57
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "NETWORK"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NETWORK:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 58
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "NONE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 59
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 60
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "VENDOR_SPECIFIC"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/fourthline/cling/support/model/StorageMedium;

    const/16 v0, 0x21

    new-array v0, v0, [Lorg/fourthline/cling/support/model/StorageMedium;

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->UNKNOWN:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->DV:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->MINI_DV:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->W_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->S_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->D_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->VHSC:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->VIDEO8:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->HI8:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->CD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->CD_DA:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->CD_R:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->CD_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->VIDEO_CD:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->SACD:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->MD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->MD_PICTURE:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_VIDEO:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_R:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_PLUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_MINUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_RAM:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DAT:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->LD:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->HDD:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->MICRO_MV:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->NETWORK:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 62
    new-instance v0, Lorg/fourthline/cling/support/model/a;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/a;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/StorageMedium;->name()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lorg/fourthline/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    .line 76
    return-void
.end method

.method static synthetic access$2(Lorg/fourthline/cling/support/model/StorageMedium;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public static valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-static {p0}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    if-nez v2, :cond_0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/StorageMedium;

    .line 101
    :goto_0
    return-object v0

    .line 97
    :cond_0
    array-length v1, v2

    new-array v1, v1, [Lorg/fourthline/cling/support/model/StorageMedium;

    .line 98
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 99
    :cond_1
    aget-object v3, v2, v0

    invoke-static {v3}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v3

    aput-object v3, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    .line 85
    if-eqz v0, :cond_0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid storage medium string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    .line 91
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/fourthline/cling/support/model/StorageMedium;

    goto :goto_0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/StorageMedium;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/fourthline/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-object v0
.end method
