.class public Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisSetupHeader;
.super Ljava/lang/Object;
.source "VorbisSetupHeader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisHeader;


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private isValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "org.FiioGetMusicInfo.audio.ogg.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisSetupHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    .line 24
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisSetupHeader;->decodeHeader([B)V

    .line 25
    return-void
.end method


# virtual methods
.method public decodeHeader([B)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 34
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    .line 35
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisSetupHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packetType"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x6

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 37
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string v0, "vorbis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iput-boolean v4, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    .line 41
    :cond_0
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    return v0
.end method
