.class public abstract Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.super Ljava/lang/Object;
.source "AbstractDataType.java"


# static fields
.field protected static final TYPE_ELEMENT:Ljava/lang/String; = "element"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

.field protected identifier:Ljava/lang/String;

.field protected size:I

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "org.FiioGetMusicInfo.tag.datatype"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 76
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 78
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 89
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 91
    invoke-virtual {p0, p3}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 103
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 106
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 199
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_4
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_5
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 130
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 132
    :cond_6
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 134
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_7
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 138
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_8
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_9
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    if-eqz v0, :cond_a

    .line 146
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 148
    :cond_a
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    if-eqz v0, :cond_b

    .line 150
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_b
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/datatype/PartOfSet$PartOfSetValue;

    if-eqz v0, :cond_c

    .line 154
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 156
    :cond_c
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_d

    .line 158
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 160
    :cond_d
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_e

    .line 162
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 164
    :cond_e
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-eqz v0, :cond_f

    .line 166
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 168
    :cond_f
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_10

    .line 170
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 172
    :cond_10
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_11

    .line 174
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 176
    :cond_11
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_12

    .line 178
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 180
    :cond_12
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_13

    .line 182
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 184
    :cond_13
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [S

    if-eqz v0, :cond_14

    .line 186
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    :cond_14
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 190
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 192
    :cond_15
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 194
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 196
    :cond_16
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_17

    .line 198
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 202
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create copy of class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createStructure()V
    .locals 3

    .prologue
    .line 410
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 284
    if-ne p0, p1, :cond_0

    move v0, v2

    .line 382
    :goto_0
    return v0

    .line 289
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    if-nez v0, :cond_1

    move v0, v3

    .line 291
    goto :goto_0

    .line 293
    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 294
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 296
    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    move v0, v2

    .line 300
    goto :goto_0

    .line 302
    :cond_3
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v0, :cond_5

    :cond_4
    move v0, v3

    .line 304
    goto :goto_0

    .line 307
    :cond_5
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_6

    .line 309
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 311
    goto :goto_0

    .line 315
    :cond_6
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_7

    .line 317
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 319
    goto :goto_0

    .line 323
    :cond_7
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-eqz v0, :cond_8

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-eqz v0, :cond_8

    .line 325
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [C

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 327
    goto :goto_0

    .line 331
    :cond_8
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_9

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_9

    .line 333
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 335
    goto/16 :goto_0

    .line 339
    :cond_9
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_a

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_a

    .line 341
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 343
    goto/16 :goto_0

    .line 347
    :cond_a
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_b

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_b

    .line 349
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 351
    goto/16 :goto_0

    .line 355
    :cond_b
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_c

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_c

    .line 357
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 359
    goto/16 :goto_0

    .line 363
    :cond_c
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 365
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 367
    goto/16 :goto_0

    .line 371
    :cond_d
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [S

    if-eqz v0, :cond_e

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    instance-of v0, v0, [S

    if-eqz v0, :cond_e

    .line 373
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, [S

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 375
    goto/16 :goto_0

    .line 378
    :cond_e
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 380
    goto/16 :goto_0

    :cond_f
    move v0, v2

    .line 382
    goto/16 :goto_0
.end method

.method public getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSize()I
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final readByteArray([B)V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->readByteArray([BI)V

    .line 268
    return-void
.end method

.method public abstract readByteArray([BI)V
.end method

.method public setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 214
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public abstract writeByteArray()[B
.end method
