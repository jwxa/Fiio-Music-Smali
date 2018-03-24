.class public Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCodeList;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;
.source "EventTimingCodeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList",
        "<",
        "Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCodeList;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyETCO;)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "TimedEventList"

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic createListElement()Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCodeList;->createListElement()Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    move-result-object v0

    return-object v0
.end method

.method protected createListElement()Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;

    const-string v1, "TimedEvent"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCodeList;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/EventTimingCode;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    return-object v0
.end method
