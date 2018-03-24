.class public Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;
.super Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;
.source "NumberHashMap.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/datatype/HashMapInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;",
        "Lorg/FiioGetMusicInfo/tag/datatype/HashMapInterface",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private hasEmptyValue:Z

.field private keyToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private valueToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    .line 47
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 52
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 72
    const-string v0, "Genre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 75
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 78
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 122
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "TextEncoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 83
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_0

    .line 85
    :cond_1
    const-string v0, "InterpolationMethod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/InterpolationTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/InterpolationTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/InterpolationTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 88
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/InterpolationTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/InterpolationTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/InterpolationTypes;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "PictureType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 93
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 96
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "TypeOfEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 101
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTypes;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto :goto_0

    .line 103
    :cond_4
    const-string v0, "TimeStampFormat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 106
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/EventTimingTimestampTypes;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_0

    .line 108
    :cond_5
    const-string v0, "TypeOfChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ChannelTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/ChannelTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ChannelTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 111
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ChannelTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/ChannelTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ChannelTypes;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_0

    .line 113
    :cond_6
    const-string v0, "RecievedAs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ReceivedAsTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/ReceivedAsTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ReceivedAsTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 116
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ReceivedAsTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/ReceivedAsTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ReceivedAsTypes;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_0

    .line 118
    :cond_7
    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/SynchronisedLyricsContentType;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/SynchronisedLyricsContentType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/SynchronisedLyricsContentType;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 121
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/SynchronisedLyricsContentType;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/SynchronisedLyricsContentType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/SynchronisedLyricsContentType;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    goto/16 :goto_0

    .line 125
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hashmap identifier not defined in this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;)V

    .line 47
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 52
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 133
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    .line 136
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    .line 137
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    .line 138
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    if-ne p1, p0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    instance-of v2, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    if-nez v2, :cond_2

    move v0, v1

    .line 192
    goto :goto_0

    .line 195
    :cond_2
    check-cast p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    .line 198
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    iget-boolean v3, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iget-object v3, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    iget-object v3, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method public getKeyToValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    return-object v0
.end method

.method public getValueToKey()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->valueToKey:Ljava/util/Map;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 218
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    if-eqz v1, :cond_1

    .line 220
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public readByteArray([BI)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->readByteArray([BI)V

    .line 239
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->hasEmptyValue:Z

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_REFERENCE_KEY_INVALID:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->identifier:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->identifier:Ljava/lang/String;

    const-string v1, "PictureType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_PICTURE_TYPE_INVALID:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 251
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 161
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    .line 177
    :goto_0
    return-void

    .line 165
    :cond_0
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    .line 167
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 171
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_2
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 260
    const-string v0, ""

    .line 268
    :goto_0
    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 264
    const-string v0, ""

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->keyToValue:Ljava/util/Map;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
