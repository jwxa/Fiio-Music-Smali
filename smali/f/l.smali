.class public final Lf/l;
.super Lf/aa;
.source "ForwardingTimeout.java"


# instance fields
.field private a:Lf/aa;


# direct methods
.method public constructor <init>(Lf/aa;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lf/aa;-><init>()V

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lf/l;->a:Lf/aa;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    return-object v0
.end method

.method public final a(J)Lf/aa;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    invoke-virtual {v0, p1, p2}, Lf/aa;->a(J)Lf/aa;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lf/aa;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    invoke-virtual {v0, p1, p2, p3}, Lf/aa;->a(JLjava/util/concurrent/TimeUnit;)Lf/aa;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lf/aa;)Lf/l;
    .locals 2

    .prologue
    .line 36
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lf/l;->a:Lf/aa;

    .line 38
    return-object p0
.end method

.method public final b_()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    invoke-virtual {v0}, Lf/aa;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c_()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    invoke-virtual {v0}, Lf/aa;->c_()Z

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    invoke-virtual {v0}, Lf/aa;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d_()Lf/aa;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    invoke-virtual {v0}, Lf/aa;->d_()Lf/aa;

    move-result-object v0

    return-object v0
.end method

.method public final e_()Lf/aa;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    invoke-virtual {v0}, Lf/aa;->e_()Lf/aa;

    move-result-object v0

    return-object v0
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lf/l;->a:Lf/aa;

    invoke-virtual {v0}, Lf/aa;->f_()V

    .line 71
    return-void
.end method
