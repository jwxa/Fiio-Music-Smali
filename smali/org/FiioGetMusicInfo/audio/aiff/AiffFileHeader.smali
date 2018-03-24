.class public Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;
.super Ljava/lang/Object;
.source "AiffFileHeader.java"


# static fields
.field private static final FORM:Ljava/lang/String; = "FORM"

.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "org.FiioGetMusicInfo.audio.aiff.AudioFileHeader"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readFileType(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V
    .locals 4

    .prologue
    .line 83
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFF:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFF:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    invoke-virtual {p2, v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setFileType(Lorg/FiioGetMusicInfo/audio/aiff/AiffType;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFC:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFC:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    invoke-virtual {p2, v0}, Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;->setFileType(Lorg/FiioGetMusicInfo/audio/aiff/AiffType;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid AIFF file: Incorrect file type info "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public readHeader(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)J
    .locals 5

    .prologue
    .line 45
    sget v0, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    sget v2, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    if-ge v1, v2, :cond_0

    .line 52
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AIFF:Unable to read required number of databytes read:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":required:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "FORM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v2, v1

    .line 61
    invoke-direct {p0, v0, p2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;->readFileType(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/aiff/AiffAudioHeader;)V

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 64
    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, v2

    const-string v2, "2147483648"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 65
    sget v2, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->TYPE_LENGTH:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 68
    :goto_0
    return-wide v0

    .line 67
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffFileHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Reading AIFF header size:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 68
    sget v0, Lorg/FiioGetMusicInfo/audio/iff/IffHeaderChunk;->TYPE_LENGTH:I

    int-to-long v0, v0

    sub-long v0, v2, v0

    goto :goto_0

    .line 73
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not an AIFF file: incorrect signature "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
