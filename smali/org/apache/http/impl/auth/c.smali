.class final Lorg/apache/http/impl/auth/c;
.super Ljava/io/OutputStream;
.source "HttpEntityDigester.java"


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private b:Z

.field private c:[B


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/http/impl/auth/c;->a:Ljava/security/MessageDigest;

    .line 42
    iget-object v0, p0, Lorg/apache/http/impl/auth/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/http/impl/auth/c;->c:[B

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/c;->b:Z

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/c;->b:Z

    .line 67
    iget-object v0, p0, Lorg/apache/http/impl/auth/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/c;->c:[B

    .line 68
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_0
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/c;->b:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/c;->a:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 51
    return-void
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/c;->b:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 59
    return-void
.end method
