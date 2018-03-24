.class public Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
.super Ljava/lang/Object;
.source "NormalPlayTimeRange.java"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "npt="


# instance fields
.field private timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

.field private timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

.field private timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-direct {v0, p3, p4}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 38
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 43
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 44
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->valueOf(Ljava/lang/String;Z)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Z)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 99
    const-string v0, "npt="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[-/]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 102
    array-length v0, v2

    packed-switch v0, :pswitch_data_0

    .line 120
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse NormalPlayTimeRange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_0
    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v2, v5

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    aget-object v0, v2, v5

    invoke-static {v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    move-result-object v0

    .line 108
    :goto_0
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    aget-object v1, v2, v4

    invoke-static {v1}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    move-result-object v1

    .line 112
    :cond_1
    :goto_1
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_2

    if-eqz p1, :cond_0

    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 113
    :cond_2
    aget-object v2, v2, v6

    invoke-static {v2}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    move-result-object v2

    .line 114
    new-instance v3, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    invoke-direct {v3, v2, v1, v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;-><init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;)V

    return-object v3

    :cond_3
    :pswitch_1
    move-object v0, v1

    goto :goto_0

    :pswitch_2
    move-object v0, v1

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->getString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    const-string v0, "npt="

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    return-object v0

    .line 88
    :cond_2
    const-string v0, "*"

    goto :goto_0
.end method

.method public getTimeDuration()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-object v0
.end method

.method public getTimeEnd()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-object v0
.end method

.method public getTimeStart()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-object v0
.end method
