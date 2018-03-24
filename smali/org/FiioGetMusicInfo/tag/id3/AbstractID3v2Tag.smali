.class public abstract Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;
.source "AbstractID3v2Tag.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/Tag;


# static fields
.field public static final FIELD_TAGID_LENGTH:I = 0x3

.field protected static final FIELD_TAGID_POS:I = 0x0

.field public static final FIELD_TAG_FLAG_LENGTH:I = 0x1

.field protected static final FIELD_TAG_FLAG_POS:I = 0x5

.field public static final FIELD_TAG_MAJOR_VERSION_LENGTH:I = 0x1

.field public static final FIELD_TAG_MAJOR_VERSION_POS:I = 0x3

.field public static final FIELD_TAG_MINOR_VERSION_LENGTH:I = 0x1

.field protected static final FIELD_TAG_MINOR_VERSION_POS:I = 0x4

.field public static final FIELD_TAG_SIZE_LENGTH:I = 0x4

.field protected static final FIELD_TAG_SIZE_POS:I = 0x6

.field private static final MAXIMUM_WRITABLE_CHUNK_SIZE:J = 0x989680L

.field public static final TAG_HEADER_LENGTH:I = 0xa

.field public static final TAG_ID:[B

.field protected static final TAG_SIZE_INCREMENT:I = 0x64

.field protected static final TYPE_BODY:Ljava/lang/String; = "body"

.field protected static final TYPE_DUPLICATEBYTES:Ljava/lang/String; = "duplicateBytes"

.field protected static final TYPE_DUPLICATEFRAMEID:Ljava/lang/String; = "duplicateFrameId"

.field protected static final TYPE_EMPTYFRAMEBYTES:Ljava/lang/String; = "emptyFrameBytes"

.field protected static final TYPE_FILEREADSIZE:Ljava/lang/String; = "fileReadSize"

.field protected static final TYPE_HEADER:Ljava/lang/String; = "header"

.field protected static final TYPE_INVALIDFRAMES:Ljava/lang/String; = "invalidFrames"


# instance fields
.field protected duplicateBytes:I

.field protected duplicateFrameId:Ljava/lang/String;

.field protected emptyFrameBytes:I

.field public encryptedFrameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private endLocationInFile:Ljava/lang/Long;

.field protected fileReadSize:I

.field public frameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected invalidFrames:I

.field private startLocationInFile:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    .line 124
    return-void

    .line 66
    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->startLocationInFile:Ljava/lang/Long;

    .line 60
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->endLocationInFile:Ljava/lang/Long;

    .line 90
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 95
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 107
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 113
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 119
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 125
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 179
    return-void
.end method

.method protected constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->startLocationInFile:Ljava/lang/Long;

    .line 60
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->endLocationInFile:Ljava/lang/Long;

    .line 90
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 95
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 107
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 113
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 119
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 125
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 189
    return-void
.end method

.method private addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;",
            "Ljava/util/HashMap;",
            "Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;",
            "Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    if-eqz p3, :cond_3

    .line 660
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :goto_0
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v0, :cond_5

    .line 673
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    .line 675
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 676
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v2, v3

    .line 686
    :goto_1
    if-nez v2, :cond_2

    .line 761
    :cond_1
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addNewFrameToMap(Ljava/util/List;Ljava/util/HashMap;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 763
    :cond_2
    :goto_3
    return-void

    .line 664
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 678
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    .line 679
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 681
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->addTextValue(Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_5
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v0, :cond_8

    .line 693
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    .line 695
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 696
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v3

    .line 706
    :goto_4
    if-nez v0, :cond_2

    goto :goto_2

    .line 698
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    .line 699
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 701
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getUrlLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->addUrlLink(Ljava/lang/String;)V

    move v0, v2

    .line 703
    goto :goto_4

    .line 711
    :cond_8
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz v0, :cond_9

    .line 713
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 714
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 715
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->addTextValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 717
    :cond_9
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v0, :cond_a

    .line 719
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    .line 720
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    .line 721
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;->addPair(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 723
    :cond_a
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v0, :cond_b

    .line 725
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    .line 726
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    .line 727
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;->addPair(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 729
    :cond_b
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    if-eqz v0, :cond_d

    .line 731
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    .line 732
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    .line 734
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_c

    .line 736
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNoAsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setTrackNo(Ljava/lang/String;)V

    .line 739
    :cond_c
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 741
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotalAsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setTrackTotal(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 744
    :cond_d
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    .line 747
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    .line 749
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_e

    .line 751
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscNoAsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->setDiscNo(Ljava/lang/String;)V

    .line 754
    :cond_e
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscTotal()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscTotal()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 756
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscTotalAsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->setDiscTotal(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private addNewFrameToMap(Ljava/util/List;Ljava/util/HashMap;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;",
            "Ljava/util/HashMap;",
            "Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;",
            "Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;",
            ")V"
        }
    .end annotation

    .prologue
    .line 634
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 636
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTextValueForFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getUserFriendlyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getV2TagSizeIfExists(Ljava/io/File;)J
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0xa

    const-wide/16 v0, 0x0

    const/4 v6, 0x3

    .line 1138
    .line 1144
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1148
    const/16 v4, 0xa

    :try_start_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1149
    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 1150
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1151
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    if-ge v5, v7, :cond_4

    .line 1158
    if-eqz v2, :cond_0

    .line 1160
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1163
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1195
    :cond_1
    :goto_0
    return-wide v0

    .line 1157
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1158
    :goto_1
    if-eqz v1, :cond_2

    .line 1160
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1163
    :cond_2
    if-eqz v2, :cond_3

    .line 1165
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1167
    :cond_3
    throw v0

    .line 1158
    :cond_4
    if-eqz v2, :cond_5

    .line 1160
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1163
    :cond_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1170
    new-array v2, v6, [B

    .line 1171
    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1172
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1179
    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    if-eq v2, v6, :cond_6

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1185
    :cond_6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 1188
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 1191
    invoke-static {v4}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1194
    add-int/lit8 v0, v0, 0xa

    .line 1195
    int-to-long v0, v0

    goto :goto_0

    .line 1157
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method private static isID3V2Header(Ljava/io/RandomAccessFile;)Z
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 137
    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 138
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 139
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 140
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isId3Tag(Ljava/io/RandomAccessFile;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 159
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->isID3V2Header(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 164
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 165
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    add-long/2addr v2, v6

    add-long/2addr v2, v6

    add-long/2addr v2, v6

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 166
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 167
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 170
    add-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private replaceFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1494
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".old"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1497
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1503
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 1504
    if-nez v1, :cond_1

    .line 1506
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1508
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToRenameFileException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToRenameFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1499
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".old"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 1513
    if-nez v1, :cond_4

    .line 1517
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1519
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1523
    :cond_2
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 1524
    if-nez v1, :cond_3

    .line 1527
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_BACKUP_TO_ORIGINAL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1531
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1533
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToRenameFileException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToRenameFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1538
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 1539
    if-nez v1, :cond_5

    .line 1542
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_WARNING_UNABLE_TO_DELETE_BACKUP_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v3, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1545
    :cond_5
    return-void
.end method

.method private writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .prologue
    .line 1716
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getPreferredFrameOrderComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1717
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 1720
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1748
    return-void

    .line 1720
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1722
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1723
    instance-of v2, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_2

    .line 1725
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1726
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 1729
    :cond_2
    instance-of v2, v0, Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;

    if-eqz v2, :cond_3

    .line 1731
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;

    .line 1732
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;->getFrames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1734
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 1740
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 1741
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1743
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method


# virtual methods
.method public addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 488
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 489
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 4

    .prologue
    .line 822
    if-nez p1, :cond_0

    .line 861
    :goto_0
    return-void

    .line 827
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;

    if-nez v0, :cond_1

    .line 829
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not of type AbstractID3v2Frame or AggregatedFrame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_1
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 834
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 836
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 839
    if-nez v1, :cond_2

    .line 841
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 844
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 846
    check-cast v1, Ljava/util/List;

    .line 847
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 852
    :cond_3
    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 853
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 854
    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 859
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 2929
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 2930
    return-void
.end method

.method protected abstract addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
.end method

.method public adjustPadding(Ljava/io/File;IJ)V
    .locals 23

    .prologue
    .line 1264
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    const-string v3, "Need to move audio file to accommodate tag"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1265
    const/4 v4, 0x0

    .line 1269
    move/from16 v0, p2

    new-array v2, v0, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1276
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getBaseFilenameForTempFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v2, v3, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    .line 1277
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Created temp file:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1297
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1311
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/UnableToRenameFileException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1314
    :try_start_3
    invoke-virtual {v2, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v16, v0

    .line 1317
    sget-object v4, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Copying:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long v6, v6, p3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long v6, v4, p3

    .line 1322
    const-wide/32 v4, 0x989680

    cmp-long v4, v6, v4

    if-gtz v4, :cond_3

    .line 1324
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1325
    move/from16 v0, p2

    int-to-long v4, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v4

    .line 1326
    sget-object v8, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Written padding:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1327
    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    .line 1329
    new-instance v8, Ljava/lang/RuntimeException;

    sget-object v9, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_UNABLE_TO_ADJUST_PADDING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v6

    invoke-virtual {v9, v10}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/UnableToRenameFileException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1376
    :catch_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    .line 1378
    :goto_0
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 1379
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1382
    :catchall_0
    move-exception v3

    .line 1386
    :goto_1
    if-eqz v4, :cond_0

    .line 1388
    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1390
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 1394
    :cond_0
    if-eqz v2, :cond_1

    .line 1396
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1398
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1406
    :cond_1
    :goto_2
    throw v3

    .line 1280
    :catch_1
    move-exception v2

    .line 1282
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1283
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1285
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1286
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToCreateFileException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1290
    :cond_2
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1291
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToCreateFileException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1300
    :catch_2
    move-exception v2

    .line 1302
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1303
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_MODIFY_TEMPORARY_FILE_IN_FOLDER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1304
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToModifyFileException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_MODIFY_TEMPORARY_FILE_IN_FOLDER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1334
    :cond_3
    const-wide/32 v4, 0x989680

    :try_start_6
    div-long v18, v6, v4

    .line 1335
    const-wide/32 v4, 0x989680

    rem-long v20, v6, v4

    .line 1336
    const-wide/16 v4, 0x0

    .line 1337
    const/4 v8, 0x0

    :goto_3
    int-to-long v10, v8

    cmp-long v9, v10, v18

    if-ltz v9, :cond_4

    .line 1341
    const-wide/32 v8, 0x989680

    mul-long v8, v8, v18

    add-long v10, p3, v8

    move-object v9, v3

    move-wide/from16 v12, v20

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 1342
    sget-object v8, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Written padding:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1343
    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    .line 1345
    new-instance v8, Ljava/lang/RuntimeException;

    sget-object v9, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP3_UNABLE_TO_ADJUST_PADDING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v6

    invoke-virtual {v9, v10}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1382
    :catchall_1
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    goto/16 :goto_1

    .line 1339
    :cond_4
    int-to-long v10, v8

    const-wide/32 v12, 0x989680

    mul-long/2addr v10, v12

    add-long v10, v10, p3

    const-wide/32 v12, 0x989680

    move-object v9, v3

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 1337
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1350
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 1353
    if-eqz v3, :cond_6

    .line 1355
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1357
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 1361
    :cond_6
    if-eqz v2, :cond_7

    .line 1363
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1365
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1370
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->replaceFile(Ljava/io/File;Ljava/io/File;)V

    .line 1374
    invoke-virtual {v15, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/UnableToRenameFileException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1386
    if-eqz v3, :cond_8

    .line 1388
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1390
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 1394
    :cond_8
    if-eqz v2, :cond_9

    .line 1396
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1398
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1407
    :cond_9
    :goto_4
    return-void

    .line 1402
    :catch_3
    move-exception v2

    .line 1404
    sget-object v4, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problem closing channels and locks:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1402
    :catch_4
    move-exception v2

    .line 1404
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Problem closing channels and locks:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1376
    :catch_5
    move-exception v3

    goto/16 :goto_0
.end method

.method protected calculateTagSize(II)I
    .locals 0

    .prologue
    .line 1237
    if-gt p1, p2, :cond_0

    .line 1244
    :goto_0
    return p2

    :cond_0
    add-int/lit8 p2, p1, 0x64

    goto :goto_0
.end method

.method protected copyFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    .prologue
    .line 1555
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1558
    instance-of v1, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v1, :cond_0

    .line 1560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    :goto_0
    return-void

    .line 1567
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 1568
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1573
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected copyFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 216
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 219
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    return-void

    .line 219
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 221
    check-cast v0, Ljava/lang/String;

    .line 222
    iget-object v2, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    instance-of v2, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_2

    .line 226
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 228
    :cond_2
    instance-of v2, v0, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;

    if-eqz v2, :cond_3

    .line 230
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->getFrames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 232
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 236
    :cond_3
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 238
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 240
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    goto :goto_2
.end method

.method protected copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying Primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 200
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 201
    iget v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 202
    iget v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 203
    iget v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 204
    iget v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    .line 205
    return-void
.end method

.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 2963
    if-eqz p1, :cond_0

    .line 2965
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 2969
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 2213
    if-nez p1, :cond_0

    .line 2215
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 2220
    :cond_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    .line 2224
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_1

    .line 2226
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 2227
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    .line 2228
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setTrackNo(Ljava/lang/String;)V

    move-object v0, v1

    .line 2254
    :goto_0
    return-object v0

    .line 2231
    :cond_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_2

    .line 2233
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 2234
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    .line 2235
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setTrackTotal(Ljava/lang/String;)V

    move-object v0, v1

    .line 2236
    goto :goto_0

    .line 2238
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_3

    .line 2240
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 2241
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    .line 2242
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->setDiscNo(Ljava/lang/String;)V

    move-object v0, v1

    .line 2243
    goto :goto_0

    .line 2245
    :cond_3
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_4

    .line 2247
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 2248
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    .line 2249
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->setDiscTotal(Ljava/lang/String;)V

    move-object v0, v1

    .line 2250
    goto :goto_0

    .line 2254
    :cond_4
    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/FiioGetMusicInfo/tag/id3/c;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;
.end method

.method public createLinkedArtworkField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 4

    .prologue
    .line 2491
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 2492
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    if-eqz v0, :cond_1

    .line 2494
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    .line 2495
    const-string v2, "PictureData"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2496
    const-string v2, "PictureType"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2497
    const-string v2, "MIMEType"

    const-string v3, "-->"

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2498
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2508
    :cond_0
    :goto_0
    return-object v1

    .line 2500
    :cond_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;

    if-eqz v0, :cond_0

    .line 2502
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;

    .line 2503
    const-string v2, "PictureData"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2504
    const-string v2, "PictureType"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2505
    const-string v2, "ImageType"

    const-string v3, "-->"

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2506
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createStructure()V
    .locals 0

    .prologue
    .line 1758
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 1759
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 1760
    return-void
.end method

.method public createStructureBody()V
    .locals 3

    .prologue
    .line 1773
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "body"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1793
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1794
    return-void

    .line 1776
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1778
    instance-of v2, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_2

    .line 1780
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1781
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->createStructure()V

    goto :goto_0

    .line 1785
    :cond_2
    check-cast v0, Ljava/util/ArrayList;

    .line 1786
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1789
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->createStructure()V

    goto :goto_1
.end method

.method public createStructureHeader()V
    .locals 3

    .prologue
    .line 1764
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "duplicateBytes"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1765
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "duplicateFrameId"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "emptyFrameBytes"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1767
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "fileReadSize"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1768
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "invalidFrames"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1769
    return-void
.end method

.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 951
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 953
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 954
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    .line 955
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 956
    invoke-virtual {v1, v2, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 957
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 958
    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 961
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 963
    :cond_0
    return-void
.end method

.method public deleteArtworkField()V
    .locals 1

    .prologue
    .line 2939
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    .line 2940
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2519
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    .line 2520
    if-nez p1, :cond_0

    .line 2522
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 2525
    :cond_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_2

    .line 2527
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 2528
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2530
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    .line 2591
    :goto_0
    return-void

    .line 2535
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 2536
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    .line 2537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setTrackNo(Ljava/lang/Integer;)V

    goto :goto_0

    .line 2541
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_4

    .line 2543
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 2544
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 2546
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    goto :goto_0

    .line 2551
    :cond_3
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 2552
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    .line 2553
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setTrackTotal(Ljava/lang/Integer;)V

    goto :goto_0

    .line 2557
    :cond_4
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_6

    .line 2559
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 2560
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 2562
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    goto :goto_0

    .line 2567
    :cond_5
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 2568
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    .line 2569
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->setDiscNo(Ljava/lang/Integer;)V

    goto :goto_0

    .line 2573
    :cond_6
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_8

    .line 2575
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 2576
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 2578
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    goto/16 :goto_0

    .line 2583
    :cond_7
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 2584
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    .line 2585
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->setDiscTotal(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 2590
    :cond_8
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    goto/16 :goto_0
.end method

.method protected doCreateTagField(Lorg/FiioGetMusicInfo/tag/id3/c;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 4

    .prologue
    .line 2273
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 2274
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    if-eqz v0, :cond_0

    .line 2276
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->setOwner(Ljava/lang/String;)V

    .line 2279
    :try_start_0
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->setUniqueIdentifier([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2349
    :goto_0
    return-object v1

    .line 2285
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "When encoding UFID charset ISO-8859-1 was deemed unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2288
    :cond_0
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v0, :cond_1

    .line 2290
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setDescription(Ljava/lang/String;)V

    .line 2291
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2293
    :cond_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v0, :cond_2

    .line 2295
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->setDescription(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->setUrlLink(Ljava/lang/String;)V

    goto :goto_0

    .line 2298
    :cond_2
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v0, :cond_4

    .line 2301
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2303
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setDescription(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->isMediaMonkeyFrame()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2307
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    const-string v2, "XXX"

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setLanguage(Ljava/lang/String;)V

    .line 2310
    :cond_3
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2312
    :cond_4
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;

    if-eqz v0, :cond_5

    .line 2314
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;->setDescription(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;->setLyric(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2317
    :cond_5
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWOAR;

    if-eqz v0, :cond_6

    .line 2319
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWOAR;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWOAR;->setUrlLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2321
    :cond_6
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz v0, :cond_7

    .line 2323
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2325
    :cond_7
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPOPM;

    if-eqz v0, :cond_8

    .line 2327
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPOPM;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPOPM;->parseString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2329
    :cond_8
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v0, :cond_9

    .line 2331
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    .line 2332
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    const-string v3, "Text"

    invoke-virtual {v2, v3, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2335
    :cond_9
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v0, :cond_a

    .line 2337
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    .line 2338
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    const-string v3, "Text"

    invoke-virtual {v2, v3, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2341
    :cond_a
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    if-nez v0, :cond_b

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;

    if-eqz v0, :cond_c

    .line 2343
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2347
    :cond_c
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field with key of:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":does not accept cannot parse data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2602
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2604
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    .line 2715
    :cond_0
    return-void

    .line 2609
    :cond_1
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2610
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 2611
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    .line 2614
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v3, :cond_4

    .line 2616
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2618
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 2620
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 2624
    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 2628
    :cond_4
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v3, :cond_6

    .line 2630
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2632
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 2634
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 2638
    :cond_5
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 2642
    :cond_6
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v3, :cond_8

    .line 2644
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2646
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 2648
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 2652
    :cond_7
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    .line 2656
    :cond_8
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    if-eqz v3, :cond_a

    .line 2658
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2660
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 2662
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2666
    :cond_9
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    .line 2672
    :cond_a
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v3, :cond_d

    .line 2674
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v3

    .line 2675
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 2676
    :cond_b
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2684
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2686
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2678
    :cond_c
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 2679
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2681
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 2691
    :cond_d
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v3, :cond_10

    .line 2693
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v3

    .line 2694
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 2695
    :cond_e
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2704
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2706
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2697
    :cond_f
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 2698
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2700
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    .line 2711
    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Need to implement getFields(FieldKey genericKey) for:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected doGetValueAtIndex(Lorg/FiioGetMusicInfo/tag/id3/c;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2474
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doGetValues(Lorg/FiioGetMusicInfo/tag/id3/c;)Ljava/util/List;

    move-result-object v0

    .line 2475
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 2477
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2479
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected doGetValues(Lorg/FiioGetMusicInfo/tag/id3/c;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/id3/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2367
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 2459
    :goto_1
    return-object v0

    .line 2368
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 2370
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 2371
    if-eqz v0, :cond_0

    .line 2373
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz v3, :cond_2

    .line 2375
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 2376
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2380
    :cond_2
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getTextValueForFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2389
    :cond_3
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2390
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 2391
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    .line 2459
    goto :goto_1

    .line 2393
    :cond_5
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    .line 2395
    instance-of v0, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 2397
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2399
    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2402
    :cond_6
    instance-of v0, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 2404
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2406
    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getUrlLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2409
    :cond_7
    instance-of v0, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 2411
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2413
    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2416
    :cond_8
    instance-of v0, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 2418
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 2420
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getUniqueIdentifier()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2422
    new-instance v0, Ljava/lang/String;

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getUniqueIdentifier()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2426
    :cond_9
    instance-of v0, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v0, :cond_b

    .line 2428
    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 2430
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2432
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 2434
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2439
    :cond_b
    instance-of v0, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v0, :cond_d

    .line 2441
    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 2443
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2445
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 2447
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2454
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Need to implement getFields(FieldKey genericKey) for:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 973
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-nez v0, :cond_0

    move v0, v1

    .line 978
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 977
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 978
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1807
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_0

    .line 1808
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_0

    .line 1809
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_0

    .line 1810
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_5

    .line 1812
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 1814
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1818
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1819
    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v2, :cond_2

    .line 1821
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNoAsText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    move-object v0, v1

    .line 1843
    :goto_1
    return-object v0

    .line 1823
    :cond_2
    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v2, :cond_3

    .line 1825
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotalAsText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1827
    :cond_3
    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v2, :cond_4

    .line 1829
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscNoAsText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1831
    :cond_4
    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v2, :cond_1

    .line 1833
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscTotalAsText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1843
    :cond_5
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doGetValues(Lorg/FiioGetMusicInfo/tag/id3/c;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getDuplicateBytes()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    return v0
.end method

.method public getDuplicateFrameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmptyFrameBytes()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    return v0
.end method

.method public getEncryptedFrame(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEndLocationInFile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 2985
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->endLocationInFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 2

    .prologue
    .line 2052
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .line 2053
    const/4 v0, 0x0

    .line 2061
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    add-int/lit8 v0, v0, 0x1

    .line 2059
    goto :goto_0

    .line 2069
    :catch_0
    move-exception v1

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 4

    .prologue
    .line 2080
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .line 2081
    const/4 v0, 0x0

    move v1, v0

    .line 2089
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 2090
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v3, :cond_0

    .line 2092
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 2093
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    if-nez v3, :cond_0

    .line 2095
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 2096
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->getNumberOfValues()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 2097
    goto :goto_0

    .line 2100
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 2087
    goto :goto_0

    .line 2107
    :catch_0
    move-exception v0

    return v1
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1940
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1943
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1946
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/b;

    invoke-direct {v2, p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/b;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1851
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1852
    if-nez v0, :cond_0

    .line 1854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    :goto_0
    return-object v0

    .line 1856
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1859
    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 1861
    :cond_1
    instance-of v1, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v1, :cond_2

    .line 1863
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 1865
    goto :goto_0

    .line 1869
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found entry in frameMap that was not a frame or a list:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2732
    if-nez p1, :cond_0

    .line 2734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2736
    :cond_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v3

    .line 2739
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2740
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2741
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2745
    if-eqz v1, :cond_c

    .line 2747
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 2867
    :cond_2
    :goto_1
    return-object v0

    .line 2747
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v0, v1

    .line 2749
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    .line 2750
    instance-of v5, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v5, :cond_4

    .line 2752
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2754
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2757
    :cond_4
    instance-of v5, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v5, :cond_5

    .line 2759
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2761
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2764
    :cond_5
    instance-of v5, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v5, :cond_6

    .line 2766
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2768
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2771
    :cond_6
    instance-of v5, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    if-eqz v5, :cond_7

    .line 2773
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2775
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2778
    :cond_7
    instance-of v5, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v5, :cond_9

    .line 2780
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 2782
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2784
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2788
    :cond_9
    instance-of v5, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v5, :cond_b

    .line 2790
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 2792
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/id3/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2794
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2800
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Need to implement getFields(FieldKey genericKey) for:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2805
    :cond_c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_f

    .line 2807
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v2

    .line 2818
    goto/16 :goto_1

    .line 2807
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v0, v1

    .line 2809
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    .line 2810
    instance-of v4, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    if-eqz v4, :cond_d

    .line 2812
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2814
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2820
    :cond_f
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_12

    .line 2822
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    move-object v0, v2

    .line 2833
    goto/16 :goto_1

    .line 2822
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v0, v1

    .line 2824
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    .line 2825
    instance-of v4, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    if-eqz v4, :cond_10

    .line 2827
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2829
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2835
    :cond_12
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_15

    .line 2837
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    move-object v0, v2

    .line 2848
    goto/16 :goto_1

    .line 2837
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v0, v1

    .line 2839
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    .line 2840
    instance-of v4, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    if-eqz v4, :cond_13

    .line 2842
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2844
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2850
    :cond_15
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_2

    .line 2852
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    move-object v0, v2

    .line 2863
    goto/16 :goto_1

    .line 2852
    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v0, v1

    .line 2854
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    .line 2855
    instance-of v4, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    if-eqz v4, :cond_16

    .line 2857
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscTotal()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2859
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method protected getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;
    .locals 4

    .prologue
    .line 1076
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locking fileChannel for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1080
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1089
    if-nez v0, :cond_0

    .line 1091
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 1093
    :cond_0
    return-object v0
.end method

.method public getFileReadBytes()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    return v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 411
    if-nez v0, :cond_0

    .line 413
    const-string v0, ""

    .line 415
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getTextValueForFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 2

    .prologue
    .line 2902
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    .line 2903
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2905
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/images/Artwork;

    .line 2907
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 432
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 434
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    .line 451
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 453
    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    goto :goto_0

    .line 457
    :cond_1
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    goto :goto_0
.end method

.method public getFrame(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;
.end method

.method public getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 913
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 914
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 916
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 918
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 919
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 921
    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 922
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 924
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 926
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 931
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract getID3Frames()Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;
.end method

.method public getInvalidFrames()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    return v0
.end method

.method public abstract getPreferredFrameOrderComparator()Ljava/util/Comparator;
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 1665
    const/4 v0, 0x0

    .line 1666
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 1668
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1686
    return v1

    .line 1670
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1671
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v3, :cond_2

    .line 1673
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1674
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1675
    goto :goto_0

    .line 1678
    :cond_2
    check-cast v0, Ljava/util/ArrayList;

    .line 1679
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1681
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1682
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public getStartLocationInFile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 2975
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->startLocationInFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2140
    if-nez p1, :cond_0

    .line 2142
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 2147
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_1

    .line 2148
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_1

    .line 2149
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_1

    .line 2150
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_6

    .line 2152
    :cond_1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 2153
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2157
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 2158
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_2

    .line 2160
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNoAsText()Ljava/lang/String;

    move-result-object v0

    .line 2198
    :goto_0
    return-object v0

    .line 2162
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_3

    .line 2164
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotalAsText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2166
    :cond_3
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_4

    .line 2168
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscNoAsText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2170
    :cond_4
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_6

    .line 2172
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscTotalAsText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2177
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 2197
    :cond_6
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    .line 2198
    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/FiioGetMusicInfo/tag/id3/c;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCommonFields()Z
    .locals 1

    .prologue
    .line 1886
    const/4 v0, 0x1

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1920
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1897
    if-nez p1, :cond_0

    .line 1899
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1904
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1909
    :cond_1
    :goto_0
    return v0

    .line 1906
    :catch_0
    move-exception v1

    .line 1908
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hasFrame(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasFrameAndBody(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    instance-of v3, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v3, :cond_1

    .line 334
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v0, :cond_0

    move v0, v1

    .line 338
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 334
    goto :goto_0

    :cond_1
    move v0, v2

    .line 336
    goto :goto_0

    :cond_2
    move v0, v1

    .line 338
    goto :goto_0
.end method

.method public hasFrameOfType(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 354
    const/4 v0, 0x0

    move v1, v0

    .line 355
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 363
    :cond_1
    return v1

    .line 357
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected loadFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .prologue
    .line 1585
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1593
    :goto_0
    return-void

    .line 1591
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    goto :goto_0
.end method

.method protected loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    .prologue
    .line 1608
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1613
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1615
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1616
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1618
    check-cast v0, Ljava/util/ArrayList;

    .line 1619
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding Multi Frame(1)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1654
    :goto_0
    return-void

    .line 1624
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding Multi Frame(2)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 1633
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding Multi FrameList(3)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1638
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1640
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring Duplicate Frame:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1644
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1646
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1647
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    goto/16 :goto_0

    .line 1651
    :cond_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding Frame"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1652
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public mergeDuplicateFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getID3Frames()Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;

    move-result-object v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 614
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 502
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 504
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v1, :cond_3

    .line 507
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 514
    :cond_3
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v1, :cond_4

    .line 517
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 524
    :cond_4
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v1, :cond_5

    .line 526
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 533
    :cond_5
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    if-eqz v1, :cond_6

    .line 535
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 542
    :cond_6
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;

    if-eqz v1, :cond_7

    .line 544
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 551
    :cond_7
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPOPM;

    if-eqz v1, :cond_8

    .line 553
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPOPM;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPOPM;->getEmailToUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPOPM;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPOPM;->getEmailToUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 561
    :cond_8
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    if-eqz v1, :cond_a

    .line 563
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    .line 564
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    .line 566
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_9

    .line 568
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackNoAsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setTrackNo(Ljava/lang/String;)V

    .line 571
    :cond_9
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotal()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 573
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->getTrackTotalAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;->setTrackTotal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 578
    :cond_a
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    if-eqz v1, :cond_c

    .line 580
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    .line 581
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;

    .line 583
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscNo()Ljava/lang/Integer;

    move-result-object v2

    .line 584
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_b

    .line 586
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscNoAsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->setDiscNo(Ljava/lang/String;)V

    .line 589
    :cond_b
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscTotal()Ljava/lang/Integer;

    move-result-object v2

    .line 590
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 592
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->getDiscTotalAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPOS;->setDiscTotal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :cond_c
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v1, :cond_d

    .line 598
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    .line 599
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;

    .line 600
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyIPLS;->addPair(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    :cond_d
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    .line 606
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;

    .line 607
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIPL;->addPair(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :cond_e
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public removeFrame(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 999
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing frame with identifier:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    return-void
.end method

.method public removeFrameOfType(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1032
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1033
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1043
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1048
    return-void

    .line 1033
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1035
    check-cast v0, Ljava/lang/String;

    .line 1036
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1038
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1045
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing frame with identifier:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "because starts with:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1046
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public removeUnsupportedFrames()V
    .locals 5

    .prologue
    .line 1010
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1022
    return-void

    .line 1012
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1013
    instance-of v0, v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1015
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v0, :cond_0

    .line 1017
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing frame"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1018
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 1206
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1207
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ByteBuffer pos:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":cap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1210
    new-array v1, v4, [B

    .line 1211
    invoke-virtual {p1, v1, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1212
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return v0

    .line 1217
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getMajorVersion()B

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getRevision()B

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 2

    .prologue
    .line 2115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not Implemented Yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndLocationInFile(J)V
    .locals 1

    .prologue
    .line 2990
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->endLocationInFile:Ljava/lang/Long;

    .line 2991
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 482
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 483
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 3

    .prologue
    .line 773
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not of type AbstractID3v2Frame nor AggregatedFrame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 780
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 782
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 786
    if-nez v1, :cond_2

    .line 788
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_1
    :goto_0
    return-void

    .line 791
    :cond_2
    instance-of v2, v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_3

    .line 793
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 794
    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    invoke-virtual {p0, v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->mergeDuplicateFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V

    goto :goto_0

    .line 798
    :cond_3
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 800
    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->mergeDuplicateFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V

    goto :goto_0

    .line 806
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 2918
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 2919
    return-void
.end method

.method public setFrame(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 875
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frames for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    return-void
.end method

.method public setFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    return-void
.end method

.method public setStartLocationInFile(J)V
    .locals 1

    .prologue
    .line 2980
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->startLocationInFile:Ljava/lang/Long;

    .line 2981
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2946
    const-string v0, "Tag content:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .line 2948
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2958
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2950
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 2951
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2953
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public abstract write(Ljava/io/File;J)J
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 1124
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->write(Ljava/nio/channels/WritableByteChannel;)V

    .line 1125
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 0

    .prologue
    .line 1104
    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0

    .prologue
    .line 1114
    return-void
.end method

.method protected writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1422
    .line 1426
    int-to-long v2, p5

    cmp-long v0, v2, p6

    if-lez v0, :cond_0

    .line 1428
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    const-string v2, "Adjusting Padding"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p0, p1, p5, p6, p7}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->adjustPadding(Ljava/io/File;IJ)V

    .line 1434
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 1435
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 1436
    invoke-virtual {v2, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1437
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1438
    new-array v0, p4, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    if-eqz v2, :cond_2

    .line 1472
    if-eqz v1, :cond_1

    .line 1474
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 1476
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1479
    :cond_2
    return-void

    .line 1440
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1442
    :goto_0
    :try_start_2
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1443
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1445
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1446
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToModifyFileException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1469
    :catchall_0
    move-exception v0

    .line 1470
    :goto_1
    if-eqz v2, :cond_4

    .line 1472
    if-eqz v1, :cond_3

    .line 1474
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 1476
    :cond_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1478
    :cond_4
    throw v0

    .line 1450
    :cond_5
    :try_start_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1451
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToCreateFileException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1456
    :goto_2
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1457
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/FiioGetMusicInfo/logging/FileSystemMessage;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1459
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1460
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToModifyFileException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_6
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1465
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToCreateFileException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/FiioGetMusicInfo/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1469
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    .line 1454
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 1440
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method protected writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .prologue
    .line 1700
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1701
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    .line 1702
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    .line 1703
    return-object v0
.end method
