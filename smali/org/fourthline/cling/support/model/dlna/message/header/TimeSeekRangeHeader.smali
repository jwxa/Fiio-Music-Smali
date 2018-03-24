.class public Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "TimeSeekRangeHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;",
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

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;->setValue(Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;

    .line 57
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->getString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/types/BytesRange;->getString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    array-length v1, v0

    if-lez v1, :cond_1

    .line 40
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;)V

    .line 41
    array-length v2, v0

    if-le v2, v3, :cond_0

    .line 42
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->setBytesRange(Lorg/fourthline/cling/model/types/BytesRange;)V

    .line 44
    :cond_0
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid TimeSeekRange header value: "

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

    .line 51
    :cond_1
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid TimeSeekRange header value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
