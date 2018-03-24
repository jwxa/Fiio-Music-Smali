.class public Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;
.super Ljava/lang/Object;
.source "VorbisIdentificationHeader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisHeader;


# static fields
.field public static final FIELD_AUDIO_CHANNELS_LENGTH:I = 0x1

.field public static final FIELD_AUDIO_CHANNELS_POS:I = 0xb

.field public static final FIELD_AUDIO_SAMPLE_RATE_LENGTH:I = 0x4

.field public static final FIELD_AUDIO_SAMPLE_RATE_POS:I = 0xc

.field public static final FIELD_BITRATE_MAX_LENGTH:I = 0x4

.field public static final FIELD_BITRATE_MAX_POS:I = 0x10

.field public static final FIELD_BITRATE_MIN_LENGTH:I = 0x4

.field public static final FIELD_BITRATE_MIN_POS:I = 0x18

.field public static final FIELD_BITRATE_NOMAIML_LENGTH:I = 0x4

.field public static final FIELD_BITRATE_NOMAIML_POS:I = 0x14

.field public static final FIELD_BLOCKSIZE_LENGTH:I = 0x1

.field public static final FIELD_BLOCKSIZE_POS:I = 0x1c

.field public static final FIELD_FRAMING_FLAG_LENGTH:I = 0x1

.field public static final FIELD_FRAMING_FLAG_POS:I = 0x1d

.field public static final FIELD_VORBIS_VERSION_LENGTH:I = 0x4

.field public static final FIELD_VORBIS_VERSION_POS:I = 0x7

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private audioChannels:I

.field private audioSampleRate:I

.field private bitrateMaximal:I

.field private bitrateMinimal:I

.field private bitrateNominal:I

.field private isValid:Z

.field private vorbisVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "org.FiioGetMusicInfo.audio.ogg.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    .line 78
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    .line 83
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->decodeHeader([B)V

    .line 84
    return-void
.end method

.method private u(I)I
    .locals 1

    .prologue
    .line 160
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public decodeHeader([B)V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/4 v4, 0x1

    .line 127
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    .line 128
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packetType"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x6

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 131
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->IDENTIFICATION_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string v0, "vorbis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    .line 134
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vorbisVersion"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 135
    const/16 v0, 0xb

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    .line 136
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audioChannels"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 137
    aget-byte v0, p1, v5

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    aget-byte v1, p1, v6

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aget-byte v1, p1, v7

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    .line 138
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audioSampleRate"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audioSampleRate"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 142
    const/16 v0, 0x10

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    const/16 v1, 0x11

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x12

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x13

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->bitrateMinimal:I

    .line 143
    const/16 v0, 0x14

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    const/16 v1, 0x15

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x16

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x17

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->bitrateNominal:I

    .line 144
    const/16 v0, 0x18

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v0

    const/16 v1, 0x19

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x1a

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x1b

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->bitrateMaximal:I

    .line 148
    const/16 v0, 0x1d

    aget-byte v0, p1, v0

    .line 149
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "framingFlag"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 150
    if-eqz v0, :cond_0

    .line 152
    iput-boolean v4, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    .line 156
    :cond_0
    return-void
.end method

.method public getChannelNumber()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->audioChannels:I

    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;->values()[Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->vorbisVersion:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBitrate()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->bitrateMaximal:I

    return v0
.end method

.method public getMinBitrate()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->bitrateMinimal:I

    return v0
.end method

.method public getNominalBitrate()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->bitrateNominal:I

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->audioSampleRate:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->isValid:Z

    return v0
.end method
