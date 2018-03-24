.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodySYTC.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final MILLISECONDS:I = 0x2

.field public static final MPEG_FRAMES:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 81
    const-string v0, "TimeStampFormat"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 90
    const-string v0, "TimeStampFormat"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "SynchronisedTempoList"

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 114
    return-void
.end method


# virtual methods
.method public addTempo(JI)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->removeTempo(J)Z

    .line 187
    const-string v0, "SynchronisedTempoList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 189
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_0

    .line 191
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v7, v1

    .line 201
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    const-string v1, "SynchronisedTempo"

    move-object v2, p0

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;IJ)V

    invoke-interface {v6, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 202
    return-void

    .line 191
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    .line 193
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v4

    .line 194
    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    .line 196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public clearTempi()V
    .locals 1

    .prologue
    .line 235
    const-string v0, "SynchronisedTempoList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, "SYTC"

    return-object v0
.end method

.method public getTempi()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    const-string v0, "SynchronisedTempoList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    .line 156
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTempo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTimestampFormat()I
    .locals 1

    .prologue
    .line 127
    const-string v0, "TimeStampFormat"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getTimestamps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const-string v0, "SynchronisedTempoList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    .line 172
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    .line 247
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->read(Ljava/nio/ByteBuffer;)V

    .line 250
    const-string v0, "SynchronisedTempoList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 251
    const-wide/16 v2, 0x0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 252
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    .line 254
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_1

    .line 256
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Synchronised tempo codes are not in chronological order. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is followed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 259
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0
.end method

.method public removeTempo(J)Z
    .locals 7

    .prologue
    .line 212
    const-string v0, "SynchronisedTempoList"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    const/4 v1, 0x0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 224
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    return v1

    .line 216
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    .line 217
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_2

    .line 219
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 220
    const/4 v1, 0x1

    .line 222
    :cond_2
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;->getTimestamp()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-gtz v0, :cond_0

    goto :goto_0
.end method

.method public setTimestampFormat(I)V
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timestamp format must be 1 or 2 (ID3v2.4, 4.7): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    const-string v0, "TimeStampFormat"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "TimeStampFormat"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCodeList;

    invoke-direct {v1, p0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCodeList;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method
