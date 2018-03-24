.class public Lorg/FiioGetMusicInfo/audio/flac/FlacTagCreator;
.super Lorg/FiioGetMusicInfo/audio/generic/AbstractTagCreator;
.source "FlacTagCreator.java"


# static fields
.field public static final DEFAULT_PADDING:I = 0xfa0

.field private static final creator:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "org.FiioGetMusicInfo.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    .line 44
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagCreator;->creator:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTagCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lorg/FiioGetMusicInfo/tag/Tag;I)Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 54
    sget-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Convert flac tag:padding:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 55
    check-cast p1, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getVorbisCommentTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 61
    sget-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagCreator;->creator:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getVorbisCommentTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;->convert(Lorg/FiioGetMusicInfo/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 64
    :goto_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    sget-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Convert flac tag:taglength:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 70
    add-int v0, v3, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 74
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getVorbisCommentTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    if-gtz p2, :cond_0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 78
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v4, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-direct {v0, v2, v4, v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;I)V

    .line 84
    :goto_2
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 89
    :cond_1
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 90
    :goto_3
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 108
    sget-object v0, Lorg/FiioGetMusicInfo/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Convert flac tag at"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 109
    if-lez p2, :cond_2

    .line 111
    add-int/lit8 v0, p2, -0x4

    .line 112
    new-instance v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v2, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->PADDING:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-direct {v1, v7, v2, v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;I)V

    .line 113
    new-instance v2, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPadding;

    invoke-direct {v2, v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    .line 114
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPadding;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    :cond_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 118
    return-object v3

    .line 64
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 66
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_1

    .line 82
    :cond_4
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v4, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-direct {v0, v7, v4, v5}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;I)V

    goto :goto_2

    .line 92
    :cond_5
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 95
    if-gtz p2, :cond_6

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 97
    :cond_6
    new-instance v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v5, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->PICTURE:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getLength()I

    move-result v6

    invoke-direct {v1, v2, v5, v6}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;I)V

    .line 103
    :goto_4
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 101
    :cond_7
    new-instance v1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v5, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;->PICTURE:Lorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getLength()I

    move-result v6

    invoke-direct {v1, v7, v5, v6}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/FiioGetMusicInfo/audio/flac/metadatablock/BlockType;I)V

    goto :goto_4

    :cond_8
    move-object v1, v0

    move v0, v2

    goto/16 :goto_0
.end method
