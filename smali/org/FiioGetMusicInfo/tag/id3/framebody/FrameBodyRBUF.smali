.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyRBUF.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field private static BUFFER_FIELD_SIZE:I

.field private static EMBED_FLAG_BIT_POSITION:I

.field private static OFFSET_FIELD_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x3

    sput v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->BUFFER_FIELD_SIZE:I

    .line 41
    const/4 v0, 0x1

    sput v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->EMBED_FLAG_BIT_POSITION:I

    .line 42
    const/4 v0, 0x4

    sput v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->OFFSET_FIELD_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 49
    const-string v0, "BufferSize"

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v0, "EmbedFlag"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v0, "Offset"

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(BZB)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 68
    const-string v0, "BufferSize"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string v0, "EmbedFlag"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v0, "Offset"

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "RBUF"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v2, "BufferSize"

    sget v3, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->BUFFER_FIELD_SIZE:I

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/BooleanByte;

    const-string v2, "EmbedFlag"

    sget v3, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->EMBED_FLAG_BIT_POSITION:I

    int-to-byte v3, v3

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/BooleanByte;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v2, "Offset"

    sget v3, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyRBUF;->OFFSET_FIELD_SIZE:I

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method
