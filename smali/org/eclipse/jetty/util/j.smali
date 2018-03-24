.class final Lorg/eclipse/jetty/util/j;
.super Ljava/io/InputStream;
.source "MultiPartInputStream.java"


# instance fields
.field a:Ljava/io/BufferedReader;

.field b:Ljava/lang/String;

.field c:[B

.field d:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 791
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/j;->a:Ljava/io/BufferedReader;

    .line 792
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lorg/eclipse/jetty/util/j;->c:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/util/j;->d:I

    iget-object v1, p0, Lorg/eclipse/jetty/util/j;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 799
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/j;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/j;->b:Ljava/lang/String;

    .line 800
    iget-object v0, p0, Lorg/eclipse/jetty/util/j;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 801
    const/4 v0, -0x1

    .line 811
    :goto_0
    return v0

    .line 802
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/j;->b:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/j;->c:[B

    .line 809
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/j;->d:I

    .line 811
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/j;->c:[B

    iget v1, p0, Lorg/eclipse/jetty/util/j;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/util/j;->d:I

    aget-byte v0, v0, v1

    goto :goto_0

    .line 804
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 805
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/j;->c:[B

    goto :goto_1

    .line 807
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/j;->c:[B

    goto :goto_1
.end method
