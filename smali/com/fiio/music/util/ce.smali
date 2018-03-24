.class public final Lcom/fiio/music/util/ce;
.super Ljava/lang/Object;
.source "RandomListManager.java"


# static fields
.field private static a:Lcom/fiio/music/util/ce;


# instance fields
.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/util/ce;->a:Lcom/fiio/music/util/ce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/util/ce;->c:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/ce;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static a()Lcom/fiio/music/util/ce;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fiio/music/util/ce;->a:Lcom/fiio/music/util/ce;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/fiio/music/util/ce;

    invoke-direct {v0}, Lcom/fiio/music/util/ce;-><init>()V

    sput-object v0, Lcom/fiio/music/util/ce;->a:Lcom/fiio/music/util/ce;

    .line 25
    :cond_0
    sget-object v0, Lcom/fiio/music/util/ce;->a:Lcom/fiio/music/util/ce;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/fiio/music/util/ce;->c:I

    if-lt v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 50
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 91
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 111
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/fiio/music/util/ce;->c:I

    .line 43
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fiio/music/util/ce;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/ce;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/fiio/music/util/ce;->d:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/fiio/music/util/ce;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/fiio/music/util/ce;->e()V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/util/ce;->d()V

    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/fiio/music/util/ce;->e()V

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/fiio/music/util/ce;->f()V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/util/ce;->d()V

    iget-object v0, p0, Lcom/fiio/music/util/ce;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/fiio/music/util/ce;->f()V

    goto :goto_1
.end method
