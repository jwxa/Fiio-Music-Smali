.class public final enum Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;
.super Ljava/lang/Enum;
.source "VorbisPacketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

.field public static final enum COMMENT_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

.field public static final enum IDENTIFICATION_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

.field public static final enum SETUP_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v3, v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->AUDIO:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    .line 11
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    const-string v1, "IDENTIFICATION_HEADER"

    invoke-direct {v0, v1, v4, v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->IDENTIFICATION_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    .line 12
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    const-string v1, "COMMENT_HEADER"

    invoke-direct {v0, v1, v6, v5}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    .line 13
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    const-string v1, "SETUP_HEADER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->AUDIO:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->IDENTIFICATION_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->type:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->type:I

    return v0
.end method
