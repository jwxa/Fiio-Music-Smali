.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyCOMM.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final DEFAULT:Ljava/lang/String; = ""

.field public static final ITUNES_NORMALIZATION:Ljava/lang/String; = "iTunNORM"

.field public static final MM_CUSTOM1:Ljava/lang/String; = "Songs-DB_Custom1"

.field public static final MM_CUSTOM2:Ljava/lang/String; = "Songs-DB_Custom2"

.field public static final MM_CUSTOM3:Ljava/lang/String; = "Songs-DB_Custom3"

.field public static final MM_CUSTOM4:Ljava/lang/String; = "Songs-DB_Custom4"

.field public static final MM_CUSTOM5:Ljava/lang/String; = "Songs-DB_Custom5"

.field public static final MM_OCCASION:Ljava/lang/String; = "Songs-DB_Occasion"

.field private static final MM_PREFIX:Ljava/lang/String; = "Songs-DB"

.field public static final MM_QUALITY:Ljava/lang/String; = "Songs-DB_Preference"

.field public static final MM_TEMPO:Ljava/lang/String; = "Songs-DB_Tempo"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 107
    const-string v0, "TextEncoding"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v0, "Language"

    const-string v1, "eng"

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v0, "Description"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v0, "Text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 128
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "Language"

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "Description"

    invoke-virtual {p0, v0, p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "Text"

    invoke-virtual {p0, v0, p4}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 116
    return-void
.end method


# virtual methods
.method public addTextValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 320
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    .line 321
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->addValue(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTextValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    .line 290
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "COMM"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "Language"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfValues()I
    .locals 1

    .prologue
    .line 329
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    .line 330
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getNumberOfValues()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextWithoutTrailingNulls()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    .line 279
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getValueWithoutTrailingNull()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    .line 305
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    .line 311
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isItunesFrame()Z
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "iTunNORM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaMonkeyFrame()Z
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "Songs-DB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    const-string v0, "Language"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    const-string v0, "Text"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringHashMap;

    const-string v2, "Language"

    const/4 v3, 0x3

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/StringHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;

    const-string v2, "Description"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getHeader()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getTextEncoding()B

    move-result v1

    invoke-static {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;B)B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setTextEncoding(B)V

    .line 258
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getHeader()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getUnicodeTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setTextEncoding(B)V

    .line 262
    :cond_0
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getHeader()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->getUnicodeTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setTextEncoding(B)V

    .line 266
    :cond_1
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 267
    return-void
.end method
