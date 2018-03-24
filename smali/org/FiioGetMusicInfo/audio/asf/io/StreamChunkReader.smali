.class public Lorg/FiioGetMusicInfo/audio/asf/io/StreamChunkReader;
.super Ljava/lang/Object;
.source "StreamChunkReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const/4 v1, 0x0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/StreamChunkReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public canFail()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/StreamChunkReader;->APPLYING:[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0}, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 27

    .prologue
    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v8

    .line 70
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v6

    .line 71
    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v4, v6}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v4, v6}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v7

    .line 80
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 82
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v12

    .line 83
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v14

    .line 89
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v4

    .line 90
    and-int/lit8 v9, v4, 0x7f

    .line 91
    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 96
    :goto_0
    const-wide/16 v16, 0x4

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 105
    sget-object v5, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v5, v6}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    new-instance v5, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    invoke-direct {v5, v8}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;-><init>(Ljava/math/BigInteger;)V

    .line 116
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v16, v0

    .line 117
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    .line 118
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v20

    .line 119
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v22

    .line 120
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v24, v0

    .line 121
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v6

    .line 122
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v26

    .line 123
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 124
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 126
    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->setCompressionFormat(J)V

    .line 127
    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->setChannelCount(J)V

    .line 128
    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->setSamplingRate(J)V

    .line 129
    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->setAverageBytesPerSec(J)V

    .line 130
    invoke-virtual {v5, v7}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->setErrorConcealment(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V

    .line 131
    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->setBlockAlignment(J)V

    .line 132
    invoke-virtual {v5, v6}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->setBitsPerSample(I)V

    .line 133
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->setCodecData([B)V

    .line 135
    move-object/from16 v0, v26

    array-length v6, v0

    add-int/lit8 v6, v6, 0x12

    int-to-long v6, v6

    .line 170
    :goto_1
    invoke-virtual {v5, v9}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->setStreamNumber(I)V

    .line 171
    invoke-virtual {v5, v14, v15}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->setStreamSpecificDataSize(J)V

    .line 172
    invoke-virtual {v5, v12, v13}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->setTypeSpecificDataSize(J)V

    .line 173
    invoke-virtual {v5, v10, v11}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->setTimeOffset(J)V

    .line 174
    invoke-virtual {v5, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->setContentEncrypted(Z)V

    .line 175
    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->setPosition(J)V

    .line 182
    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x18

    sub-long/2addr v8, v10

    sub-long v6, v8, v6

    .line 183
    const-wide/16 v8, 0x36

    .line 182
    sub-long/2addr v6, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 185
    :cond_1
    return-object v5

    .line 91
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 140
    :cond_3
    new-instance v5, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;

    invoke-direct {v5, v8}, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;-><init>(Ljava/math/BigInteger;)V

    .line 144
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v6

    .line 145
    invoke-static/range {p2 .. p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v16

    .line 148
    const-wide/16 v18, 0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 154
    const-wide/16 v18, 0x2

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 156
    const-wide/16 v18, 0x10

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 157
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 158
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 160
    invoke-virtual {v5, v6, v7}, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->setPictureWidth(J)V

    .line 161
    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->setPictureHeight(J)V

    .line 162
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->setCodecId([B)V

    .line 164
    const-wide/16 v6, 0x1f

    goto :goto_1
.end method
