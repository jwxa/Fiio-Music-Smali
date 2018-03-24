.class public Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;
.super Ljava/lang/Object;
.source "OggVorbisCommentTagCreator.java"


# static fields
.field public static final FIELD_FRAMING_BIT_LENGTH:I = 0x1

.field public static final FRAMING_BIT_VALID_VALUE:B = 0x1t

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private creator:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "org.FiioGetMusicInfo.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;->logger:Ljava/util/logging/Logger;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;->creator:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;

    .line 36
    return-void
.end method


# virtual methods
.method public convert(Lorg/FiioGetMusicInfo/tag/Tag;)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/OggVorbisCommentTagCreator;->creator:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;->convert(Lorg/FiioGetMusicInfo/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x1

    .line 51
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 54
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisPacketType;->getType()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 55
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisHeader;->CAPTURE_PATTERN_AS_BYTES:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 64
    return-object v1
.end method
