.class public final Lcom/fiio/music/i/d;
.super Ljava/lang/Object;
.source "SortModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/fiio/music/i/d;->g:Z

    .line 13
    iput-boolean v0, p0, Lcom/fiio/music/i/d;->h:Z

    .line 14
    iput-boolean v0, p0, Lcom/fiio/music/i/d;->i:Z

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fiio/music/i/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fiio/music/i/d;->d:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fiio/music/i/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fiio/music/i/d;->f:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fiio/music/i/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fiio/music/i/d;->e:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fiio/music/i/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fiio/music/i/d;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/i/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fiio/music/i/d;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fiio/music/i/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fiio/music/i/d;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/fiio/music/i/d;->g:Z

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/i/d;->g:Z

    .line 67
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/fiio/music/i/d;->h:Z

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/i/d;->h:Z

    .line 73
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/fiio/music/i/d;->i:Z

    return v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/i/d;->i:Z

    .line 79
    return-void
.end method
