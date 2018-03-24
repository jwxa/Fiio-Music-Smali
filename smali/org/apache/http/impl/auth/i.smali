.class final Lorg/apache/http/impl/auth/i;
.super Lorg/apache/http/impl/auth/g;
.source "NTLMEngineImpl.java"


# instance fields
.field protected a:[B

.field protected b:Ljava/lang/String;

.field protected c:[B

.field protected d:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x14

    .line 830
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/g;-><init>(Ljava/lang/String;)V

    .line 834
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/http/impl/auth/i;->a:[B

    .line 835
    iget-object v0, p0, Lorg/apache/http/impl/auth/i;->a:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/i;->a([B)V

    .line 837
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/i;->a(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/i;->d:I

    .line 838
    iget v0, p0, Lorg/apache/http/impl/auth/i;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NTLM type 2 message has flags that make no sense: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/http/impl/auth/i;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    iput-object v3, p0, Lorg/apache/http/impl/auth/i;->b:Ljava/lang/String;

    .line 847
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/i;->a()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 848
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/i;->b(I)[B

    move-result-object v0

    .line 849
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 851
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UnicodeLittleUnmarked"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/impl/auth/i;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :cond_1
    iput-object v3, p0, Lorg/apache/http/impl/auth/i;->c:[B

    .line 861
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/i;->a()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    .line 862
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/i;->b(I)[B

    move-result-object v0

    .line 863
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 864
    iput-object v0, p0, Lorg/apache/http/impl/auth/i;->c:[B

    .line 867
    :cond_2
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final c()[B
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/http/impl/auth/i;->a:[B

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lorg/apache/http/impl/auth/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method final e()[B
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lorg/apache/http/impl/auth/i;->c:[B

    return-object v0
.end method

.method final f()I
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lorg/apache/http/impl/auth/i;->d:I

    return v0
.end method
