.class public Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;
.source "Mp4HdlrBox.java"


# static fields
.field public static final HANDLER_LENGTH:I = 0x4

.field public static final HANDLER_POS:I = 0x8

.field public static final ITUNES_META_HDLR_DAT_LENGTH:I = 0x1a

.field public static final NAME_LENGTH:I = 0x2

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final RESERVED1_LENGTH:I = 0x4

.field public static final RESERVED1_POS:I = 0xc

.field public static final RESERVED2_LENGTH:I = 0x4

.field public static final RESERVED3_LENGTH:I = 0x4

.field public static final RESERVED_FLAG_LENGTH:I = 0x4

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field private static mediaDataTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handlerType:Ljava/lang/String;

.field private mediaDataType:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field private name:Ljava/lang/String;

.field private reserved:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    .line 55
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->values()[Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 59
    return-void

    .line 55
    :cond_0
    aget-object v3, v1, v0

    .line 57
    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->header:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 69
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 70
    return-void
.end method

.method public static createiTunesStyleHdlrBox()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;
    .locals 5

    .prologue
    const/16 v4, 0x70

    .line 160
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->HDLR:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 161
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 163
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 164
    const/16 v2, 0x8

    const/16 v3, 0x6d

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 165
    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 166
    const/16 v2, 0xa

    const/16 v3, 0x69

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 167
    const/16 v2, 0xb

    const/16 v3, 0x72

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 168
    const/16 v2, 0xc

    const/16 v3, 0x61

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 169
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 170
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 171
    const/16 v2, 0xf

    const/16 v3, 0x6c

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 174
    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;

    invoke-direct {v2, v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 175
    return-object v2
.end method


# virtual methods
.method public getHandlerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataType()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    return-object v0
.end method

.method public processData()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->mediaDataTypeMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 91
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlerType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->handlerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":human readable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->mediaDataType:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method
