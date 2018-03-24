.class final Lorg/apache/http/impl/auth/h;
.super Lorg/apache/http/impl/auth/g;
.source "NTLMEngineImpl.java"


# instance fields
.field protected a:[B

.field protected b:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 761
    invoke-direct {p0}, Lorg/apache/http/impl/auth/g;-><init>()V

    .line 764
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/impl/auth/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-static {p1}, Lorg/apache/http/impl/auth/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/h;->a:[B

    .line 769
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/h;->b:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unicode unsupported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lorg/apache/http/impl/auth/h;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    iget-object v1, p0, Lorg/apache/http/impl/auth/h;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 787
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/auth/h;->a(II)V

    .line 790
    const v0, 0x20080235

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->d(I)V

    .line 798
    iget-object v0, p0, Lorg/apache/http/impl/auth/h;->b:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->c(I)V

    .line 799
    iget-object v0, p0, Lorg/apache/http/impl/auth/h;->b:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->c(I)V

    .line 802
    iget-object v0, p0, Lorg/apache/http/impl/auth/h;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->d(I)V

    .line 805
    iget-object v0, p0, Lorg/apache/http/impl/auth/h;->a:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->c(I)V

    .line 806
    iget-object v0, p0, Lorg/apache/http/impl/auth/h;->a:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->c(I)V

    .line 809
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->d(I)V

    .line 812
    iget-object v0, p0, Lorg/apache/http/impl/auth/h;->a:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->b([B)V

    .line 815
    iget-object v0, p0, Lorg/apache/http/impl/auth/h;->b:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/h;->b([B)V

    .line 817
    invoke-super {p0}, Lorg/apache/http/impl/auth/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
