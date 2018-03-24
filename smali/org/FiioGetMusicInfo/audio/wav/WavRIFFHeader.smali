.class public Lorg/FiioGetMusicInfo/audio/wav/WavRIFFHeader;
.super Ljava/lang/Object;
.source "WavRIFFHeader.java"


# static fields
.field public static final RIFF_SIGNATURE:Ljava/lang/String; = "RIFF"

.field public static final WAVE_SIGNATURE:Ljava/lang/String; = "WAVE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidHeader(Ljava/io/RandomAccessFile;)Z
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sget v2, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 43
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    const-string v1, "This is not a WAV File (<12 bytes)"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    sget v0, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    invoke-static {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 49
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
