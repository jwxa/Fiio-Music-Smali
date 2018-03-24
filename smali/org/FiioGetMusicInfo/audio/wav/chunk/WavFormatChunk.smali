.class public Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;
.super Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.source "WavFormatChunk.java"


# static fields
.field private static final EXTENSIBLE_DATA_SIZE:I = 0x16

.field private static final EXTENSIBLE_DATA_SIZE_WE_NEED:I = 0xa

.field private static final STANDARD_DATA_SIZE:I = 0x12

.field private static final WAV_RIFF_ENCODING_PREPEND:Ljava/lang/String; = "WAV-RIFF "


# instance fields
.field private blockAlign:I

.field private channelMask:I

.field private info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

.field private isValid:Z

.field private wsf:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->isValid:Z

    .line 61
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    .line 62
    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;->getByCode(Ljava/lang/Integer;)Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->wsf:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    .line 68
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 69
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 70
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setByteRate(I)V

    .line 71
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getByteRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lorg/FiioGetMusicInfo/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    mul-int/2addr v2, v3

    sget v3, Lorg/FiioGetMusicInfo/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 72
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 73
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->blockAlign:I

    .line 74
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 75
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->wsf:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->wsf:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    sget-object v2, Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;->FORMAT_EXTENSIBLE:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    if-ne v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v1

    .line 78
    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 82
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->channelMask:I

    .line 85
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->u(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;->getByCode(Ljava/lang/Integer;)Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->wsf:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->wsf:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    if-eqz v1, :cond_2

    .line 90
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getBitsPerSample()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->wsf:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getBitsPerSample()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 103
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->wsf:Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavSubFormat;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->info:Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Sub Format Code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, "RIFF-WAVE Header:\n"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Is valid?: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavFormatChunk;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method
