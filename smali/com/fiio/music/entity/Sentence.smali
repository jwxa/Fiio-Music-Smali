.class public Lcom/fiio/music/entity/Sentence;
.super Ljava/lang/Object;
.source "Sentence.java"


# instance fields
.field private content:Ljava/lang/String;

.field private fromTime:J

.field private toTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/entity/Sentence;-><init>(Ljava/lang/String;JJ)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 17
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/entity/Sentence;-><init>(Ljava/lang/String;JJ)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/fiio/music/entity/Sentence;->content:Ljava/lang/String;

    .line 12
    iput-wide p2, p0, Lcom/fiio/music/entity/Sentence;->fromTime:J

    .line 13
    iput-wide p4, p0, Lcom/fiio/music/entity/Sentence;->toTime:J

    .line 14
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fiio/music/entity/Sentence;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDuring()J
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/fiio/music/entity/Sentence;->toTime:J

    iget-wide v2, p0, Lcom/fiio/music/entity/Sentence;->fromTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFromTime()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/fiio/music/entity/Sentence;->fromTime:J

    return-wide v0
.end method

.method public getToTime()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/fiio/music/entity/Sentence;->toTime:J

    return-wide v0
.end method

.method public isInTime(J)Z
    .locals 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/fiio/music/entity/Sentence;->fromTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/fiio/music/entity/Sentence;->toTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fiio/music/entity/Sentence;->content:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFromTime(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/fiio/music/entity/Sentence;->fromTime:J

    .line 30
    return-void
.end method

.method public setToTime(J)V
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/fiio/music/entity/Sentence;->toTime:J

    .line 38
    return-void
.end method
