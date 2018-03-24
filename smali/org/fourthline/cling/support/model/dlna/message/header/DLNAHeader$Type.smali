.class public final enum Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
.super Ljava/lang/Enum;
.source "DLNAHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private headerTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;"
        }
    .end annotation
.end field

.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "TimeSeekRange"

    const-string v2, "TimeSeekRange.dlna.org"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "XSeekRange"

    const-string v2, "X-Seek-Range"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "PlaySpeed"

    const-string v2, "PlaySpeed.dlna.org"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/message/header/PlaySpeedHeader;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "AvailableSeekRange"

    const-string v2, "availableSeekRange.dlna.org"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 50
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "GetAvailableSeekRange"

    const-string v2, "getAvailableSeekRange.dlna.org"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/message/header/GetAvailableSeekRangeHeader;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v10, v2, v3}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 51
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "GetContentFeatures"

    const/4 v2, 0x5

    const-string v3, "getcontentFeatures.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/GetContentFeaturesHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 52
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "ContentFeatures"

    const/4 v2, 0x6

    const-string v3, "contentFeatures.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 53
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "TransferMode"

    const/4 v2, 0x7

    const-string v3, "transferMode.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 54
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "FriendlyName"

    const/16 v2, 0x8

    const-string v3, "friendlyName.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/FriendlyNameHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 55
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "PeerManager"

    const/16 v2, 0x9

    const-string v3, "peerManager.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/PeerManagerHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 56
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "AvailableRange"

    const/16 v2, 0xa

    const-string v3, "Available-Range.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableRangeHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 57
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "SCID"

    const/16 v2, 0xb

    const-string v3, "scid.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/SCIDHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 58
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RealTimeInfo"

    const/16 v2, 0xc

    const-string v3, "realTimeInfo.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/RealTimeInfoHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 59
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "ScmsFlag"

    const/16 v2, 0xd

    const-string v3, "scmsFlag.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/ScmsFlagHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 60
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "WCT"

    const/16 v2, 0xe

    const-string v3, "WCT.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/WCTHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 61
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "MaxPrate"

    const/16 v2, 0xf

    const-string v3, "Max-Prate.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/MaxPrateHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 62
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "EventType"

    const/16 v2, 0x10

    const-string v3, "Event-Type.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/EventTypeHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 63
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "Supported"

    const/16 v2, 0x11

    const-string v3, "Supported"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/SupportedHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 64
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "BufferInfo"

    const/16 v2, 0x12

    const-string v3, "Buffer-Info.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/BufferInfoHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 65
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RTPH264DeInterleaving"

    const/16 v2, 0x13

    const-string v3, "rtp-h264-deint-buf-cap.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 66
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RTPAACDeInterleaving"

    const/16 v2, 0x14

    const-string v3, "rtp-aac-deint-buf-cap.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 67
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RTPAMRDeInterleaving"

    const/16 v2, 0x15

    const-string v3, "rtp-amr-deint-buf-cap.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 68
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RTPAMRWBPlusDeInterleaving"

    const/16 v2, 0x16

    const-string v3, "rtp-amrwbplus-deint-buf-cap.dlna.org"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 69
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "PRAGMA"

    const/16 v2, 0x17

    const-string v3, "PRAGMA"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/PragmaHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v0, 0x18

    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 71
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/a;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/dlna/message/header/a;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->byName:Ljava/util/Map;

    .line 75
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->httpName:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->headerTypes:[Ljava/lang/Class;

    .line 83
    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 1

    .prologue
    .line 106
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->byName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getHeaderTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public final getHttpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->httpName:Ljava/lang/String;

    return-object v0
.end method

.method public final isValidHeaderType(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHeaderTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 99
    :goto_1
    return v0

    .line 94
    :cond_0
    aget-object v4, v2, v1

    .line 95
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const/4 v0, 0x1

    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
