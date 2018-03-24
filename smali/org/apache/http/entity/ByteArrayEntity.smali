.class public Lorg/apache/http/entity/ByteArrayEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final b:[B

.field protected final content:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final len:I

.field private final off:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([BLorg/apache/http/entity/ContentType;)V

    .line 93
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([BIILorg/apache/http/entity/ContentType;)V

    .line 97
    return-void
.end method

.method public constructor <init>([BIILorg/apache/http/entity/ContentType;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source byte array may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntity;->content:[B

    .line 83
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntity;->b:[B

    .line 84
    iput p2, p0, Lorg/apache/http/entity/ByteArrayEntity;->off:I

    .line 85
    iput p3, p0, Lorg/apache/http/entity/ByteArrayEntity;->len:I

    .line 86
    if-eqz p4, :cond_3

    .line 87
    invoke-virtual {p4}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 89
    :cond_3
    return-void
.end method

.method public constructor <init>([BLorg/apache/http/entity/ContentType;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source byte array may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntity;->content:[B

    .line 62
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntity;->b:[B

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/entity/ByteArrayEntity;->off:I

    .line 64
    iget-object v0, p0, Lorg/apache/http/entity/ByteArrayEntity;->b:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/http/entity/ByteArrayEntity;->len:I

    .line 65
    if-eqz p2, :cond_1

    .line 66
    invoke-virtual {p2}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/ByteArrayEntity;->b:[B

    iget v2, p0, Lorg/apache/http/entity/ByteArrayEntity;->off:I

    iget v3, p0, Lorg/apache/http/entity/ByteArrayEntity;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/http/entity/ByteArrayEntity;->len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/ByteArrayEntity;->b:[B

    iget v1, p0, Lorg/apache/http/entity/ByteArrayEntity;->off:I

    iget v2, p0, Lorg/apache/http/entity/ByteArrayEntity;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 117
    return-void
.end method
