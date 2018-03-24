.class final Lg/a/a/i;
.super Lg/a/a/q;
.source "FixedLengthInputStream.java"


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Lg/a/a/h;Ljava/io/InputStream;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lg/a/a/q;-><init>(Lg/a/a/h;Ljava/io/InputStream;)V

    .line 26
    iput p3, p0, Lg/a/a/i;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method protected final a([BII)I
    .locals 3

    .prologue
    .line 30
    iget v0, p0, Lg/a/a/i;->a:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lg/a/a/i;->g:Z

    .line 31
    iget-boolean v0, p0, Lg/a/a/i;->g:Z

    if-eqz v0, :cond_2

    .line 32
    const/4 v0, -0x1

    .line 44
    :cond_0
    :goto_1
    return v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_2
    iget v0, p0, Lg/a/a/i;->a:I

    if-le p3, v0, :cond_3

    .line 35
    iget p3, p0, Lg/a/a/i;->a:I

    .line 37
    :cond_3
    iget-object v0, p0, Lg/a/a/i;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 38
    if-ltz v0, :cond_0

    .line 39
    iget v1, p0, Lg/a/a/i;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lg/a/a/i;->a:I

    .line 40
    iget v1, p0, Lg/a/a/i;->a:I

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lg/a/a/i;->d:Lg/a/a/h;

    invoke-virtual {v1}, Lg/a/a/h;->n()Lg/a/a/ae;

    move-result-object v1

    iget-object v2, p0, Lg/a/a/i;->d:Lg/a/a/h;

    invoke-virtual {v2}, Lg/a/a/h;->m()Lg/a/a/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/a/a/ae;->b(Lg/a/a/k;)V

    goto :goto_1
.end method

.method public final available()I
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lg/a/a/i;->g:Z

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x0

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    iget-object v0, p0, Lg/a/a/i;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 52
    iget v1, p0, Lg/a/a/i;->a:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lg/a/a/i;->a:I

    goto :goto_0
.end method

.method public final mark(I)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
