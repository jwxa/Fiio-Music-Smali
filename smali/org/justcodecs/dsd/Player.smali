.class public Lorg/justcodecs/dsd/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private BufferSizeMax:I

.field private audioTrack:Landroid/media/AudioTrack;

.field private file:Ljava/lang/String;

.field private finishflag:Z

.field thread:Ljava/lang/Thread;

.field private totalBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x41000

    iput v0, p0, Lorg/justcodecs/dsd/Player;->BufferSizeMax:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/justcodecs/dsd/Player;->file:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/justcodecs/dsd/Player;->finishflag:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x41000

    iput v0, p0, Lorg/justcodecs/dsd/Player;->BufferSizeMax:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/justcodecs/dsd/Player;->file:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/justcodecs/dsd/Player;->finishflag:Z

    .line 65
    :try_start_0
    iput-object p1, p0, Lorg/justcodecs/dsd/Player;->file:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t play "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeIntoFile([B)V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/internal_sd/test.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 236
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 237
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 238
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method createDecoder()Lorg/justcodecs/dsd/Decoder;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lorg/justcodecs/dsd/Decoder;

    invoke-direct {v0}, Lorg/justcodecs/dsd/Decoder;-><init>()V

    return-object v0
.end method

.method public initThread()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/justcodecs/dsd/Player;->thread:Ljava/lang/Thread;

    .line 79
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 118
    invoke-virtual {p0}, Lorg/justcodecs/dsd/Player;->createDecoder()Lorg/justcodecs/dsd/Decoder;

    move-result-object v9

    .line 119
    :try_start_0
    const-string v0, ".dsf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Lorg/justcodecs/dsd/DSFFormat;

    invoke-direct {v0}, Lorg/justcodecs/dsd/DSFFormat;-><init>()V

    .line 128
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILE:/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :try_start_1
    new-instance v1, Ljava/net/URL;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    .line 135
    :cond_0
    :goto_1
    :try_start_2
    new-instance v1, Lorg/justcodecs/dsd/Utils$RandomDSDStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/justcodecs/dsd/DSDFormat;->init(Lorg/justcodecs/dsd/DSDStream;)V

    .line 136
    invoke-virtual {v9, v0}, Lorg/justcodecs/dsd/Decoder;->init(Lorg/justcodecs/dsd/DSDFormat;)V

    .line 138
    const-string v1, "sin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Playing   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v10, Lorg/justcodecs/dsd/Decoder$PCMFormat;

    invoke-direct {v10}, Lorg/justcodecs/dsd/Decoder$PCMFormat;-><init>()V

    .line 156
    const v0, 0x2b110

    iput v0, v10, Lorg/justcodecs/dsd/Decoder$PCMFormat;->sampleRate:I

    .line 157
    const/16 v0, 0x10

    iput v0, v10, Lorg/justcodecs/dsd/Decoder$PCMFormat;->bitsPerSample:I

    .line 159
    const/4 v0, 0x2

    iput v0, v10, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    .line 160
    const v0, 0x2b110

    .line 161
    const/16 v1, 0xc

    const/4 v2, 0x2

    .line 160
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 163
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    .line 164
    const v2, 0x2b110

    .line 165
    const/16 v3, 0xc

    .line 166
    const/4 v4, 0x2

    .line 167
    mul-int/lit8 v5, v5, 0x2

    .line 168
    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 163
    iput-object v0, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    .line 170
    const/16 v0, 0x18

    iput v0, v10, Lorg/justcodecs/dsd/Decoder$PCMFormat;->bitsPerSample:I

    .line 171
    invoke-virtual {v9, v10}, Lorg/justcodecs/dsd/Decoder;->setPCMFormat(Lorg/justcodecs/dsd/Decoder$PCMFormat;)V

    .line 172
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v11, :cond_3

    .line 173
    const-string v0, "sin"

    const-string v1, "inited"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_2
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 185
    iget v0, v10, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    const/16 v1, 0x800

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 186
    iget v1, v10, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    if-le v1, v8, :cond_5

    move v6, v8

    .line 187
    :goto_3
    mul-int/lit8 v1, v6, 0x2

    .line 189
    mul-int/lit16 v1, v1, 0x800

    new-array v10, v1, [B

    .line 190
    const-wide/16 v2, 0x0

    invoke-virtual {v9, v2, v3}, Lorg/justcodecs/dsd/Decoder;->seek(J)V

    .line 191
    :goto_4
    invoke-virtual {v9, v0}, Lorg/justcodecs/dsd/Decoder;->decodePCM([[I)I

    move-result v11

    .line 194
    if-lez v11, :cond_9

    move v5, v7

    move v1, v7

    .line 198
    :goto_5
    if-lt v5, v11, :cond_6

    .line 209
    iget-object v2, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, v1}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :cond_1
    :try_start_3
    const-string v0, ".iso"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Lorg/justcodecs/dsd/DISOFormat;

    invoke-direct {v0}, Lorg/justcodecs/dsd/DISOFormat;-><init>()V

    goto/16 :goto_0

    .line 127
    :cond_2
    new-instance v0, Lorg/justcodecs/dsd/DFFFormat;

    invoke-direct {v0}, Lorg/justcodecs/dsd/DFFFormat;-><init>()V

    goto/16 :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 175
    const-string v0, "sin"

    const-string v1, "STATE_NO_STATIC_DATA"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_4
    const-string v0, "sin"

    const-string v1, "uninited"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 186
    :cond_5
    iget v1, v10, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    move v6, v1

    goto :goto_3

    :cond_6
    move v4, v7

    .line 199
    :goto_6
    if-lt v4, v6, :cond_7

    .line 198
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    .line 201
    :cond_7
    aget-object v2, v0, v4

    aget v3, v2, v5

    shr-int/lit8 v3, v3, 0x8

    aput v3, v2, v5

    move v2, v1

    move v1, v7

    .line 202
    :goto_7
    if-lt v1, v8, :cond_8

    .line 199
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v2

    goto :goto_6

    .line 203
    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-object v12, v0, v4

    aget v12, v12, v5

    mul-int/lit8 v13, v1, 0x8

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v2

    .line 202
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_7

    .line 213
    :cond_9
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 220
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 228
    invoke-virtual {v9}, Lorg/justcodecs/dsd/Decoder;->dispose()V

    .line 229
    return-void

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->file:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/Player;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;->printStackTrace()V

    goto :goto_0
.end method

.method public startThread()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t play "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/justcodecs/dsd/Player;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 93
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 94
    iget-object v0, p0, Lorg/justcodecs/dsd/Player;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 95
    return-void
.end method
