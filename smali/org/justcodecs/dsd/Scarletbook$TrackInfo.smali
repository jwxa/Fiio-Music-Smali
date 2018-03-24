.class public Lorg/justcodecs/dsd/Scarletbook$TrackInfo;
.super Ljava/util/HashMap;
.source "Scarletbook.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final TRACK_TYPE_ARRANGER:I = 0x5

.field static final TRACK_TYPE_ARRANGER_PHONETIC:I = 0x85

.field static final TRACK_TYPE_COMPOSER:I = 0x4

.field static final TRACK_TYPE_COMPOSER_PHONETIC:I = 0x84

.field static final TRACK_TYPE_EXTRA_MESSAGE:I = 0x7

.field static final TRACK_TYPE_EXTRA_MESSAGE_PHONETIC:I = 0x87

.field static final TRACK_TYPE_MESSAGE:I = 0x6

.field static final TRACK_TYPE_MESSAGE_PHONETIC:I = 0x86

.field static final TRACK_TYPE_PERFORMER:I = 0x2

.field static final TRACK_TYPE_PERFORMER_PHONETIC:I = 0x82

.field static final TRACK_TYPE_SONGWRITER:I = 0x3

.field static final TRACK_TYPE_SONGWRITER_PHONETIC:I = 0x83

.field static final TRACK_TYPE_TITLE:I = 0x1

.field static final TRACK_TYPE_TITLE_PHONETIC:I = 0x81


# instance fields
.field public duration:I

.field public durationFrame:I

.field position:I

.field public start:I

.field public startFrame:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 558
    iput p1, p0, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->position:I

    .line 560
    return-void
.end method


# virtual methods
.method addText([BLjava/lang/String;ILjava/lang/String;)I
    .locals 3

    .prologue
    const/16 v1, 0xff

    .line 593
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 600
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0xff

    invoke-direct {v0, p1, p3, v2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v0, v1

    .line 604
    :cond_0
    :goto_2
    return v0

    .line 594
    :cond_1
    add-int v2, p3, v0

    aget-byte v2, p1, v2

    if-nez v2, :cond_2

    .line 595
    if-lez v0, :cond_0

    .line 596
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p3, v0, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p0, p2, v2}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 602
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, p2, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 593
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fill([BILjava/lang/String;)V
    .locals 6

    .prologue
    .line 563
    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->position:I

    sub-int/2addr v0, p2

    .line 564
    aget-byte v2, p1, v0

    .line 566
    add-int/lit8 v1, v0, 0x4

    .line 567
    const/4 v0, 0x0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-lt v1, v2, :cond_0

    .line 589
    return-void

    .line 568
    :cond_0
    aget-byte v3, p1, v0

    .line 569
    add-int/lit8 v0, v0, 0x2

    .line 570
    aget-byte v4, p1, v0

    if-eqz v4, :cond_1

    .line 571
    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 581
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    aget-byte v3, p1, v0

    if-nez v3, :cond_3

    .line 586
    :cond_1
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-byte v3, p1, v0

    if-eqz v3, :cond_4

    .line 567
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :pswitch_0
    const-string v3, "title"

    invoke-virtual {p0, p1, v3, v0, p3}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->addText([BLjava/lang/String;ILjava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 575
    goto :goto_2

    .line 577
    :pswitch_1
    const-string v3, "performer"

    invoke-virtual {p0, p1, v3, v0, p3}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->addText([BLjava/lang/String;ILjava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 578
    goto :goto_2

    .line 582
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 587
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrackInfo [start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
