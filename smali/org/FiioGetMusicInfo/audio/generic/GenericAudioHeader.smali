.class public Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
.super Ljava/lang/Object;
.source "GenericAudioHeader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/AudioHeader;


# instance fields
.field private audioDataEndPosition:Ljava/lang/Long;

.field private audioDataLength:Ljava/lang/Long;

.field private audioDataStartPosition:Ljava/lang/Long;

.field private bitRate:Ljava/lang/Integer;

.field private bitsPerSample:Ljava/lang/Integer;

.field private byteRate:Ljava/lang/Integer;

.field private encodingType:Ljava/lang/String;

.field private isLossless:Ljava/lang/Boolean;

.field private isVbr:Ljava/lang/Boolean;

.field private noOfChannels:Ljava/lang/Integer;

.field private noOfSamples:Ljava/lang/Long;

.field private samplingRate:Ljava/lang/Integer;

.field private trackLength:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    .line 60
    return-void
.end method


# virtual methods
.method public getAudioDataEndPosition()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getAudioDataLength()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getAudioDataStartPosition()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitRateAsNumber()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 82
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getBitsPerSample()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, -0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getByteRate()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->byteRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x2

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getChannelNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfSamples()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfSamples:Ljava/lang/Long;

    return-object v0
.end method

.method public getPreciseTrackLength()D
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 152
    const-wide/16 v0, 0x0

    .line 154
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRateAsNumber()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrackLength()I
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getPreciseTrackLength()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isLossless()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isVariableBitRate()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setAudioDataEndPosition(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    .line 422
    return-void
.end method

.method public setAudioDataLength(J)V
    .locals 1

    .prologue
    .line 383
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataLength:Ljava/lang/Long;

    .line 384
    return-void
.end method

.method public setAudioDataStartPosition(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    .line 411
    return-void
.end method

.method public setBitRate(I)V
    .locals 1

    .prologue
    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    .line 225
    return-void
.end method

.method public setBitsPerSample(I)V
    .locals 1

    .prologue
    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    .line 277
    return-void
.end method

.method public setByteRate(I)V
    .locals 1

    .prologue
    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->byteRate:Ljava/lang/Integer;

    .line 287
    return-void
.end method

.method public setChannelNumber(I)V
    .locals 1

    .prologue
    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    .line 235
    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setLossless(Z)V
    .locals 1

    .prologue
    .line 307
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    .line 308
    return-void
.end method

.method public setNoOfSamples(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfSamples:Ljava/lang/Long;

    .line 399
    return-void
.end method

.method public setPreciseLength(D)V
    .locals 1

    .prologue
    .line 256
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    .line 257
    return-void
.end method

.method public setSamplingRate(I)V
    .locals 1

    .prologue
    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    .line 267
    return-void
.end method

.method public setVariableBitRate(Z)V
    .locals 1

    .prologue
    .line 297
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    .line 298
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    const-string v1, "Audio Header content:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataLength:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\taudioDataLength:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataLength:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\taudioDataStartPosition:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\taudioDataEndPosition:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_2
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->byteRate:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tbyteRate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->byteRate:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_3
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tbitRate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_4
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tsamplingRate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_5
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tbitsPerSample:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_6
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfSamples:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ttotalNoSamples:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfSamples:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_7
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tnumberOfChannels:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_8
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tencodingType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_9
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tisVbr:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_a
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tisLossless:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_b
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    if-eqz v1, :cond_c

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ttrackDuration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
