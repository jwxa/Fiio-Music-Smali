.class public Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "EventTimingCode.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final SIZE:I = 0x5


# instance fields
.field private timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

.field private type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 6

    .prologue
    .line 42
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;IJ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 31
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v1, "TypeOfEvent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    .line 32
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v1, "DateTime"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    .line 48
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->setValue(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->setValue(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 31
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v1, "TypeOfEvent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    .line 32
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v1, "DateTime"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    .line 36
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->setValue(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->setValue(Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    invoke-direct {v0, p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 127
    :cond_3
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 129
    :cond_4
    check-cast p1, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    .line 130
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getType()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x5

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 138
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 139
    return v0

    :cond_1
    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public readByteArray([BI)V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getSize()I

    move-result v0

    .line 93
    sget-object v1, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offset:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 97
    array-length v1, p1

    sub-int v0, v1, v0

    if-le p2, v0, :cond_0

    .line 99
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->logger:Ljava/util/logging/Logger;

    const-string v1, "Invalid size for FrameBody"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    const-string v1, "Invalid size for FrameBody"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->readByteArray([BI)V

    .line 104
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->getSize()I

    move-result v0

    add-int/2addr v0, p2

    .line 105
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-virtual {v1, p1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->readByteArray([BI)V

    .line 106
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->getSize()I

    .line 107
    return-void
.end method

.method public setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 57
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 58
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 59
    return-void
.end method

.method public setTimestamp(J)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->setValue(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public setType(I)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->setValue(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->type:Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->writeByteArray()[B

    move-result-object v1

    .line 113
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;->timestamp:Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->writeByteArray()[B

    move-result-object v2

    .line 114
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 116
    :cond_1
    array-length v0, v1

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 117
    array-length v3, v1

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    array-length v1, v1

    array-length v3, v2

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
