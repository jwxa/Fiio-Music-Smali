.class public Lcom/fiio/music/entity/PlayerList;
.super Ljava/lang/Object;
.source "PlayerList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private date:J

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/fiio/music/entity/PlayerList;->id:I

    .line 23
    iput-object p2, p0, Lcom/fiio/music/entity/PlayerList;->name:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/fiio/music/entity/PlayerList;->date:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/fiio/music/entity/PlayerList;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fiio/music/entity/PlayerList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/fiio/music/entity/PlayerList;->date:J

    .line 48
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/fiio/music/entity/PlayerList;->id:I

    .line 32
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fiio/music/entity/PlayerList;->name:Ljava/lang/String;

    .line 40
    return-void
.end method
