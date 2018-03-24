.class public Lorg/fourthline/cling/model/types/BytesRange;
.super Ljava/lang/Object;
.source "BytesRange.java"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "bytes="


# instance fields
.field private byteLength:Ljava/lang/Long;

.field private firstByte:Ljava/lang/Long;

.field private lastByte:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    .line 31
    iput-object p2, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    .line 37
    iput-object p2, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    .line 38
    iput-object p3, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 102
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[-/]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    array-length v0, v3

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse Bytes Range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    const-string v0, "bytes="

    goto :goto_0

    .line 104
    :cond_2
    const-string p1, "bytes="

    goto :goto_1

    .line 107
    :pswitch_0
    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v3, v4

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 108
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 111
    :goto_2
    aget-object v2, v3, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    aget-object v2, v3, v7

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 115
    :goto_3
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    aget-object v1, v3, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 118
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_0

    .line 119
    :cond_4
    new-instance v3, Lorg/fourthline/cling/model/types/BytesRange;

    invoke-direct {v3, v1, v2, v0}, Lorg/fourthline/cling/model/types/BytesRange;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v3

    :cond_5
    move-object v2, v1

    goto :goto_3

    :cond_6
    :pswitch_1
    move-object v0, v1

    goto :goto_2

    :pswitch_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_3

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getByteLength()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getFirstByte()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastByte()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/model/types/BytesRange;->getString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/model/types/BytesRange;->getString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    if-eqz p2, :cond_3

    .line 85
    :goto_0
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_2
    return-object v0

    .line 83
    :cond_3
    const-string p2, "bytes="

    goto :goto_0

    .line 91
    :cond_4
    const-string v0, "*"

    goto :goto_1
.end method
