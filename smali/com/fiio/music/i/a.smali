.class public final Lcom/fiio/music/i/a;
.super Ljava/lang/Object;
.source "LyricSentence.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v0, p0, Lcom/fiio/music/i/a;->a:J

    .line 17
    iput-wide v0, p0, Lcom/fiio/music/i/a;->b:J

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/fiio/music/i/a;->c:Ljava/lang/String;

    .line 24
    iput-wide p1, p0, Lcom/fiio/music/i/a;->a:J

    .line 25
    iput-object p3, p0, Lcom/fiio/music/i/a;->c:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/fiio/music/i/a;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/fiio/music/i/a;->a:J

    .line 34
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fiio/music/i/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/fiio/music/i/a;->b:J

    .line 50
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/fiio/music/i/a;->b:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/fiio/music/i/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " durationTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fiio/music/i/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentTxt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/i/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
