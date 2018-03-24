.class final Lg/a/a/l;
.super Lcom/d/a/a/i;
.source "HttpContextImpl.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/d/a/a/k;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lg/a/a/ae;

.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/d/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/d/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lg/a/a/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/d/a/a/k;Lg/a/a/ae;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/d/a/a/i;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/a/a/l;->d:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lg/a/a/l;->f:Ljava/util/LinkedList;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lg/a/a/l;->g:Ljava/util/LinkedList;

    .line 41
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal value for path or protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/l;->b:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lg/a/a/l;->a:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lg/a/a/l;->b:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/a/a/l;->b:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal value for protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iput-object p3, p0, Lg/a/a/l;->c:Lcom/d/a/a/k;

    .line 50
    iput-object p4, p0, Lg/a/a/l;->e:Lg/a/a/ae;

    .line 51
    new-instance v0, Lg/a/a/a;

    invoke-direct {v0}, Lg/a/a/a;-><init>()V

    iput-object v0, p0, Lg/a/a/l;->h:Lg/a/a/a;

    .line 52
    iget-object v0, p0, Lg/a/a/l;->f:Ljava/util/LinkedList;

    iget-object v1, p0, Lg/a/a/l;->h:Lg/a/a/a;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Lcom/d/a/a/k;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lg/a/a/l;->c:Lcom/d/a/a/k;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lg/a/a/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method final c()Lg/a/a/ae;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lg/a/a/l;->e:Lg/a/a/ae;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lg/a/a/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/d/a/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lg/a/a/l;->g:Ljava/util/LinkedList;

    return-object v0
.end method

.method final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/d/a/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lg/a/a/l;->f:Ljava/util/LinkedList;

    return-object v0
.end method

.method final g()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lg/a/a/l;->e:Lg/a/a/ae;

    invoke-virtual {v0}, Lg/a/a/ae;->f()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method
