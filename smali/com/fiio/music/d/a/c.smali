.class public final Lcom/fiio/music/d/a/c;
.super Ljava/lang/Object;
.source "ContentItem.java"


# instance fields
.field private a:Lorg/fourthline/cling/model/meta/Service;

.field private b:Lorg/fourthline/cling/support/model/DIDLObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/container/Container;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/fiio/music/d/a/c;->a:Lorg/fourthline/cling/model/meta/Service;

    .line 32
    iput-object p1, p0, Lcom/fiio/music/d/a/c;->b:Lorg/fourthline/cling/support/model/DIDLObject;

    .line 33
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/d/a/c;->c:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/d/a/c;->d:Ljava/lang/Boolean;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/fiio/music/d/a/c;->a:Lorg/fourthline/cling/model/meta/Service;

    .line 40
    iput-object p1, p0, Lcom/fiio/music/d/a/c;->b:Lorg/fourthline/cling/support/model/DIDLObject;

    .line 41
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/d/a/c;->c:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/d/a/c;->d:Ljava/lang/Boolean;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Lorg/fourthline/cling/support/model/container/Container;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fiio/music/d/a/c;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/fiio/music/d/a/c;->b:Lorg/fourthline/cling/support/model/DIDLObject;

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lorg/fourthline/cling/support/model/item/Item;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fiio/music/d/a/c;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/d/a/c;->b:Lorg/fourthline/cling/support/model/DIDLObject;

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    goto :goto_0
.end method

.method public final c()Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fiio/music/d/a/c;->a:Lorg/fourthline/cling/model/meta/Service;

    return-object v0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fiio/music/d/a/c;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    check-cast p1, Lcom/fiio/music/d/a/c;

    .line 81
    iget-object v2, p0, Lcom/fiio/music/d/a/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/fiio/music/d/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/d/a/c;->b:Lorg/fourthline/cling/support/model/DIDLObject;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fiio/music/d/a/c;->b:Lorg/fourthline/cling/support/model/DIDLObject;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
