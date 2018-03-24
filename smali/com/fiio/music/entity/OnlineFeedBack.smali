.class public Lcom/fiio/music/entity/OnlineFeedBack;
.super Ljava/lang/Object;
.source "OnlineFeedBack.java"


# instance fields
.field private contact:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private id_online_feedback:J

.field private model:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->id_online_feedback:J

    .line 41
    iput-object p3, p0, Lcom/fiio/music/entity/OnlineFeedBack;->sn:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/fiio/music/entity/OnlineFeedBack;->model:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/fiio/music/entity/OnlineFeedBack;->title:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/fiio/music/entity/OnlineFeedBack;->content:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/fiio/music/entity/OnlineFeedBack;->contact:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/entity/OnlineFeedBack;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fiio/music/entity/OnlineFeedBack;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId_online_feedback()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/fiio/music/entity/OnlineFeedBack;->id_online_feedback:J

    return-wide v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fiio/music/entity/OnlineFeedBack;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fiio/music/entity/OnlineFeedBack;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fiio/music/entity/OnlineFeedBack;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->contact:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->content:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setId_online_feedback(J)V
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->id_online_feedback:J

    .line 54
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->model:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->sn:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->title:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id_online_feedback = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/fiio/music/entity/OnlineFeedBack;->id_online_feedback:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmodel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string v1, "\ncontent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncontact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/entity/OnlineFeedBack;->contact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
