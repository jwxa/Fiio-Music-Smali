.class public Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;
.super Ljava/lang/Object;
.source "BufferInfoType.java"


# static fields
.field static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private cdb:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;

.field private dejitterSize:Ljava/lang/Long;

.field private fullnessReports:Ljava/lang/Boolean;

.field private targetDuration:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "^dejitter=(\\d{1,10})(;CDB=(\\d{1,10});BTM=(0|1|2))?(;TD=(\\d{1,10}))?(;BFR=(0|1))?$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->dejitterSize:Ljava/lang/Long;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->dejitterSize:Ljava/lang/Long;

    .line 41
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->cdb:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;

    .line 42
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->targetDuration:Ljava/lang/Long;

    .line 43
    iput-object p4, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->fullnessReports:Ljava/lang/Boolean;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 47
    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 55
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 56
    new-instance v1, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 57
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->values()[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    .line 56
    invoke-direct {v1, v2, v5}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;-><init>(Ljava/lang/Long;Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;)V

    move-object v2, v1

    .line 59
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 60
    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 62
    :goto_1
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 63
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    :cond_0
    new-instance v3, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;

    invoke-direct {v3, v4, v2, v1, v0}, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;-><init>(Ljava/lang/Long;Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 69
    :cond_1
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse BufferInfoType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public getCdb()Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->cdb:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;

    return-object v0
.end method

.method public getDejitterSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->dejitterSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dejitter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->dejitterSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->cdb:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";CDB="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->cdb:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;->getSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BTM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->cdb:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;->getTranfer()Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->targetDuration:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";TD="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->targetDuration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_1
    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->fullnessReports:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";BFR="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->fullnessReports:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_2
    return-object v0

    .line 81
    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method public getTargetDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->targetDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public isFullnessReports()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/BufferInfoType;->fullnessReports:Ljava/lang/Boolean;

    return-object v0
.end method
