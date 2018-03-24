.class public final Lg/a/a/a;
.super Lcom/d/a/a/f;
.source "AuthFilter.java"


# instance fields
.field private a:Lcom/d/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/d/a/a/f;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/a/a;->a:Lcom/d/a/a/a;

    .line 26
    return-void
.end method

.method private static a(Lcom/d/a/a/j;)V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/d/a/a/j;->e()Ljava/io/InputStream;

    move-result-object v0

    .line 38
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 39
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/d/a/a/j;Lcom/d/a/a/g;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 48
    iget-object v0, p0, Lg/a/a/a;->a:Lcom/d/a/a/a;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lg/a/a/a;->a:Lcom/d/a/a/a;

    invoke-virtual {v0}, Lcom/d/a/a/a;->a()Lcom/d/a/a/c;

    move-result-object v0

    .line 50
    instance-of v1, v0, Lcom/d/a/a/e;

    if-eqz v1, :cond_2

    .line 51
    check-cast v0, Lcom/d/a/a/e;

    .line 52
    invoke-static {p1}, Lg/a/a/h;->a(Lcom/d/a/a/j;)Lg/a/a/h;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lcom/d/a/a/e;->a()Lcom/d/a/a/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/a/a/h;->a(Lcom/d/a/a/l;)V

    .line 65
    :cond_0
    invoke-virtual {p2, p1}, Lcom/d/a/a/g;->a(Lcom/d/a/a/j;)V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    instance-of v1, v0, Lcom/d/a/a/d;

    if-eqz v1, :cond_3

    .line 56
    check-cast v0, Lcom/d/a/a/d;

    .line 57
    invoke-static {p1}, Lg/a/a/a;->a(Lcom/d/a/a/j;)V

    .line 58
    invoke-virtual {v0}, Lcom/d/a/a/d;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v3}, Lcom/d/a/a/j;->a(IJ)V

    goto :goto_0

    .line 59
    :cond_3
    instance-of v1, v0, Lcom/d/a/a/b;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lcom/d/a/a/b;

    .line 61
    invoke-static {p1}, Lg/a/a/a;->a(Lcom/d/a/a/j;)V

    .line 62
    invoke-virtual {v0}, Lcom/d/a/a/b;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v3}, Lcom/d/a/a/j;->a(IJ)V

    goto :goto_0
.end method
