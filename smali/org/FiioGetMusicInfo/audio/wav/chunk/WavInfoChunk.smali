.class public Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;
.super Ljava/lang/Object;
.source "WavInfoChunk.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private wavInfoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "org.FiioGetMusicInfo.audio.wav.WavInfoChunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/wav/WavTag;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;->wavInfoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    .line 27
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;->wavInfoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->setInfoTag(Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;)V

    .line 28
    return-void
.end method


# virtual methods
.method public readChunks(Ljava/nio/ByteBuffer;)Z
    .locals 6

    .prologue
    .line 36
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 38
    :cond_1
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 48
    const/4 v0, 0x0

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    .line 52
    sget-object v3, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 55
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->getByCode(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;->wavInfoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_3
    :goto_2
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto :goto_2

    .line 68
    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 70
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoChunk;->wavInfoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    invoke-virtual {v3, v0, v2}, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->addUnRecognizedField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
