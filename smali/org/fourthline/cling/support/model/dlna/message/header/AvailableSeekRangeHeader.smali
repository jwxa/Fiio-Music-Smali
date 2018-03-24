.class public Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "AvailableSeekRangeHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->setValue(Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    .line 88
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getModeFlag()Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->getString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/fourthline/cling/model/types/BytesRange;->getString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    return-object v1
.end method

.method public setString(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 39
    array-length v4, v3

    if-le v4, v0, :cond_2

    .line 47
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MODE_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 55
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v3, v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->valueOf(Ljava/lang/String;Z)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
    :try_end_1
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 64
    :goto_0
    if-eqz v0, :cond_1

    .line 65
    :try_start_2
    array-length v0, v3

    if-le v0, v7, :cond_0

    .line 67
    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-static {v0}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v0

    .line 68
    new-instance v1, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    invoke-direct {v1, v4, v2, v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;Lorg/fourthline/cling/model/types/BytesRange;)V

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->setValue(Ljava/lang/Object;)V

    .line 76
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    const-string v1, "Invalid AvailableSeekRange Mode"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    new-instance v1, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid AvailableSeekRange header value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/InvalidValueException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    .line 58
    const/4 v0, 0x1

    :try_start_3
    aget-object v0, v3, v0

    invoke-static {v0}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;
    :try_end_3
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 60
    goto :goto_0

    .line 61
    :catch_3
    move-exception v0

    :try_start_4
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    const-string v1, "Invalid AvailableSeekRange Range"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    invoke-direct {v0, v4, v2}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 74
    :cond_1
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    invoke-direct {v0, v4, v1}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/model/types/BytesRange;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->setValue(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 82
    :cond_2
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid AvailableSeekRange header value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
