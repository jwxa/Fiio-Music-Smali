.class public Lcom/fiio/music/entity/Activity;
.super Ljava/lang/Object;
.source "Activity.java"


# instance fields
.field private NO:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private flag:Z

.field private name:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/fiio/music/entity/Activity;->flag:Z

    .line 22
    iput-object p2, p0, Lcom/fiio/music/entity/Activity;->NO:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/fiio/music/entity/Activity;->name:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/fiio/music/entity/Activity;->url:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/fiio/music/entity/Activity;->picUrl:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/fiio/music/entity/Activity;->startDate:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/fiio/music/entity/Activity;->endDate:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fiio/music/entity/Activity;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fiio/music/entity/Activity;->NO:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fiio/music/entity/Activity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiio/music/entity/Activity;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/entity/Activity;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/entity/Activity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFlag()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/fiio/music/entity/Activity;->flag:Z

    return v0
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fiio/music/entity/Activity;->endDate:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setFlag(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/fiio/music/entity/Activity;->flag:Z

    .line 39
    return-void
.end method

.method public setNO(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fiio/music/entity/Activity;->NO:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fiio/music/entity/Activity;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fiio/music/entity/Activity;->picUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fiio/music/entity/Activity;->startDate:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fiio/music/entity/Activity;->url:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/entity/Activity;->NO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nurl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/fiio/music/entity/Activity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npicUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/fiio/music/entity/Activity;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nstartDate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/fiio/music/entity/Activity;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nendDate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/fiio/music/entity/Activity;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
