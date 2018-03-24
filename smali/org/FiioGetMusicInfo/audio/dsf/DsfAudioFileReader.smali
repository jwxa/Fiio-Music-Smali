.class public Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "DsfAudioFileReader.java"


# static fields
.field public static final CHUNKSIZE_LENGTH:I = 0x8

.field private static final DSD_SIGNATURE:Ljava/lang/String; = "DSD "

.field public static final FILESIZE_LENGTH:I = 0x8

.field public static final FMT_CHUNK_MIN_DATA_SIZE_:I = 0x28

.field private static final FMT_SIGNATURE:Ljava/lang/String; = "fmt "

.field public static final METADATA_OFFSET_LENGTH:I = 0x8

.field public static final SIGNATURE_LENGTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method

.method private readAudioInfo(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 7

    .prologue
    .line 82
    new-instance v0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_0

    .line 85
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Not enough bytes supplied for Generic audio header. Returning an empty one."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 99
    mul-int v6, v3, v2

    mul-int/2addr v6, v1

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 100
    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 101
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 102
    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 103
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    .line 104
    long-to-float v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 106
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Created audio header: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readTag(Ljava/io/RandomAccessFile;J)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 6

    .prologue
    .line 142
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 143
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 144
    const v1, 0x989680

    if-le v0, v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 150
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 160
    :goto_1
    :try_start_1
    sget-object v2, Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start creating ID3v2 Tag for version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 161
    packed-switch v0, :pswitch_data_0

    .line 170
    sget-object v1, Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown major ID3v2 version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Returning an empty ID3v2 Tag."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>()V
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Could not create ID3v2 Tag"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :catch_1
    move-exception v0

    const/4 v0, -0x1

    goto :goto_1

    .line 164
    :pswitch_0
    :try_start_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 4

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "DSD "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 53
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "fmt "

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 58
    const-wide/16 v2, 0xc

    sub-long/2addr v0, v2

    .line 59
    long-to-int v0, v0

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;->readAudioInfo(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Not a valid dsf file. Content does not start with \'fmt \'."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Not a valid dsf file. Content does not start with \'DSD \'."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "DSD "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 119
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 121
    invoke-direct {p0, p1, v0, v1}, Lorg/FiioGetMusicInfo/audio/dsf/DsfAudioFileReader;->readTag(Ljava/io/RandomAccessFile;J)Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "Not a valid dsf file. Content does not start with \'DSD \'."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
