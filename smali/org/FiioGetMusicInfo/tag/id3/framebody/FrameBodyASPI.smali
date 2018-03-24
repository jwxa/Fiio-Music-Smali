.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyASPI;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyASPI.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field private static final BITS_PER_INDEX_POINT:Ljava/lang/String; = "BitsPerIndexPoint"

.field private static final BITS_PER_INDEX_POINTS_FIELD_SIZE:I = 0x1

.field private static final DATA_LENGTH_FIELD_SIZE:I = 0x4

.field private static final DATA_START_FIELD_SIZE:I = 0x4

.field private static final FRACTION_AT_INDEX:Ljava/lang/String; = "FractionAtIndex"

.field private static final FRACTION_AT_INDEX_MINIMUM_FIELD_SIZE:I = 0x1

.field private static final INDEXED_DATA_LENGTH:Ljava/lang/String; = "IndexedDataLength"

.field private static final INDEXED_DATA_START:Ljava/lang/String; = "IndexedDataStart"

.field private static final NO_OF_INDEX_POINTS_FIELD_SIZE:I = 0x2

.field private static final NUMBER_OF_INDEX_POINTS:Ljava/lang/String; = "NumberOfIndexPoints"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyASPI;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "ASPI"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 133
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyASPI;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v2, "IndexedDataStart"

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyASPI;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v2, "IndexedDataLength"

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyASPI;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v2, "NumberOfIndexPoints"

    const/4 v3, 0x2

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyASPI;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v2, "BitsPerIndexPoint"

    invoke-direct {v1, v2, p0, v4}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyASPI;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberVariableLength;

    const-string v2, "FractionAtIndex"

    invoke-direct {v1, v2, p0, v4}, Lorg/FiioGetMusicInfo/tag/datatype/NumberVariableLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method
