.class public final enum Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
.super Ljava/lang/Enum;
.source "OggPageHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTINUED_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum END_OF_BITSTREAM:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum FRESH_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum START_OF_BITSTREAM:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;


# instance fields
.field fileValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 388
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const-string v1, "FRESH_PACKET"

    invoke-direct {v0, v1, v2, v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->FRESH_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 389
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const-string v1, "CONTINUED_PACKET"

    invoke-direct {v0, v1, v3, v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 390
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const-string v1, "START_OF_BITSTREAM"

    invoke-direct {v0, v1, v4, v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->START_OF_BITSTREAM:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 391
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const-string v1, "END_OF_BITSTREAM"

    invoke-direct {v0, v1, v5, v6}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->END_OF_BITSTREAM:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 386
    new-array v0, v6, [Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->FRESH_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    aput-object v1, v0, v2

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->START_OF_BITSTREAM:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->END_OF_BITSTREAM:Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    aput-object v1, v0, v5

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 397
    iput-byte p3, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->fileValue:B

    .line 398
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getFileValue()B
    .locals 1

    .prologue
    .line 405
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->fileValue:B

    return v0
.end method
