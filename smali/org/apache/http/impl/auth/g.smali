.class Lorg/apache/http/impl/auth/g;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/auth/g;->b:I

    .line 611
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/auth/g;->a:[B

    .line 607
    iput v0, p0, Lorg/apache/http/impl/auth/g;->b:I

    .line 615
    const-string v1, "ASCII"

    invoke-static {p1, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/auth/g;->a:[B

    .line 618
    iget-object v1, p0, Lorg/apache/http/impl/auth/g;->a:[B

    array-length v1, v1

    invoke-static {}, Lorg/apache/http/impl/auth/d;->a()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 619
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM message decoding error - packet too short"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 621
    :cond_1
    invoke-static {}, Lorg/apache/http/impl/auth/d;->a()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 622
    iget-object v1, p0, Lorg/apache/http/impl/auth/g;->a:[B

    aget-byte v1, v1, v0

    invoke-static {}, Lorg/apache/http/impl/auth/d;->a()[B

    move-result-object v2

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 623
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM message expected - instead got unrecognized bytes"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_2
    invoke-static {}, Lorg/apache/http/impl/auth/d;->a()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/g;->a(I)I

    move-result v0

    .line 630
    if-eq v0, v4, :cond_3

    .line 631
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NTLM type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message expected - instead got type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/http/impl/auth/g;->b:I

    .line 635
    return-void
.end method

.method private a(B)V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    iget v1, p0, Lorg/apache/http/impl/auth/g;->b:I

    aput-byte p1, v0, v1

    .line 702
    iget v0, p0, Lorg/apache/http/impl/auth/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/auth/g;->b:I

    .line 703
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lorg/apache/http/impl/auth/g;->b:I

    return v0
.end method

.method protected final a(I)I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/d;->a([BI)I

    move-result v0

    return v0
.end method

.method protected final a(II)V
    .locals 1

    .prologue
    .line 688
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/auth/g;->b:I

    .line 690
    invoke-static {}, Lorg/apache/http/impl/auth/d;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/g;->b([B)V

    .line 691
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/auth/g;->d(I)V

    .line 692
    return-void
.end method

.method protected final a([B)V
    .locals 4

    .prologue
    .line 659
    iget-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    array-length v0, v0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x18

    if-ge v0, v1, :cond_0

    .line 660
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM: Message too short"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    const/16 v1, 0x18

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/http/impl/auth/g;->b:I

    if-le v0, v1, :cond_1

    .line 741
    iget v0, p0, Lorg/apache/http/impl/auth/g;->b:I

    new-array v1, v0, [B

    .line 742
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/http/impl/auth/g;->b:I

    if-ge v0, v2, :cond_0

    .line 743
    iget-object v2, p0, Lorg/apache/http/impl/auth/g;->a:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 749
    :goto_1
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 747
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    goto :goto_1
.end method

.method protected final b([B)V
    .locals 4

    .prologue
    .line 712
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 713
    iget-object v1, p0, Lorg/apache/http/impl/auth/g;->a:[B

    iget v2, p0, Lorg/apache/http/impl/auth/g;->b:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 714
    iget v1, p0, Lorg/apache/http/impl/auth/g;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/impl/auth/g;->b:I

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    return-void
.end method

.method protected final b(I)[B
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lorg/apache/http/impl/auth/g;->a:[B

    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/d;->b([BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected final c(I)V
    .locals 1

    .prologue
    .line 720
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/g;->a(B)V

    .line 721
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/g;->a(B)V

    .line 722
    return-void
.end method

.method protected final d(I)V
    .locals 1

    .prologue
    .line 726
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/g;->a(B)V

    .line 727
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/g;->a(B)V

    .line 728
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/g;->a(B)V

    .line 729
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/g;->a(B)V

    .line 730
    return-void
.end method
