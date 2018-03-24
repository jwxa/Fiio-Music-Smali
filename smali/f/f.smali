.class public final Lf/f;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lf/h;
.implements Lf/i;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:Lf/v;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lf/f;->c:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 609
    iget-wide v0, p0, Lf/f;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    .line 610
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string v0, ""

    .line 631
    :cond_2
    :goto_0
    return-object v0

    .line 616
    :cond_3
    iget-object v1, p0, Lf/f;->a:Lf/v;

    .line 617
    iget v0, v1, Lf/v;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lf/v;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 619
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lf/f;->e(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 622
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lf/v;->a:[B

    iget v3, v1, Lf/v;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 623
    iget v2, v1, Lf/v;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lf/v;->b:I

    .line 624
    iget-wide v2, p0, Lf/f;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lf/f;->b:J

    .line 626
    iget v2, v1, Lf/v;->b:I

    iget v3, v1, Lf/v;->c:I

    if-ne v2, v3, :cond_2

    .line 627
    invoke-virtual {v1}, Lf/v;->a()Lf/v;

    move-result-object v2

    iput-object v2, p0, Lf/f;->a:Lf/v;

    .line 628
    invoke-static {v1}, Lf/w;->a(Lf/v;)V

    goto :goto_0
.end method

.method private c([B)V
    .locals 3

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 771
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lf/f;->a([BII)I

    move-result v1

    .line 772
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 773
    :cond_0
    add-int/2addr v0, v1

    .line 774
    goto :goto_0

    .line 775
    :cond_1
    return-void
.end method

.method private k(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    sget-object v0, Lf/ac;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lf/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([BII)I
    .locals 6

    .prologue
    .line 778
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    .line 780
    iget-object v1, p0, Lf/f;->a:Lf/v;

    .line 781
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 793
    :cond_0
    :goto_0
    return v0

    .line 782
    :cond_1
    iget v0, v1, Lf/v;->c:I

    iget v2, v1, Lf/v;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 783
    iget-object v2, v1, Lf/v;->a:[B

    iget v3, v1, Lf/v;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    iget v2, v1, Lf/v;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lf/v;->b:I

    .line 786
    iget-wide v2, p0, Lf/f;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lf/f;->b:J

    .line 788
    iget v2, v1, Lf/v;->b:I

    iget v3, v1, Lf/v;->c:I

    if-ne v2, v3, :cond_0

    .line 789
    invoke-virtual {v1}, Lf/v;->a()Lf/v;

    move-result-object v2

    iput-object v2, p0, Lf/f;->a:Lf/v;

    .line 790
    invoke-static {v1}, Lf/w;->a(Lf/v;)V

    goto :goto_0
.end method

.method public final a(B)J
    .locals 2

    .prologue
    .line 1266
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lf/f;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(BJ)J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v6, -0x1

    .line 1274
    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_0
    iget-object v2, p0, Lf/f;->a:Lf/v;

    .line 1283
    if-nez v2, :cond_1

    move-wide v0, v6

    .line 1318
    :goto_0
    return-wide v0

    .line 1286
    :cond_1
    iget-wide v4, p0, Lf/f;->b:J

    sub-long/2addr v4, p2

    cmp-long v3, v4, p2

    if-gez v3, :cond_2

    .line 1288
    iget-wide v0, p0, Lf/f;->b:J

    move-object v4, v2

    .line 1289
    :goto_1
    cmp-long v2, v0, p2

    if-lez v2, :cond_4

    .line 1290
    iget-object v4, v4, Lf/v;->g:Lf/v;

    .line 1291
    iget v2, v4, Lf/v;->c:I

    iget v3, v4, Lf/v;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 1296
    :goto_2
    iget v2, v4, Lf/v;->c:I

    iget v3, v4, Lf/v;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_4

    .line 1297
    iget-object v0, v4, Lf/v;->f:Lf/v;

    move-object v4, v0

    move-wide v0, v2

    .line 1298
    goto :goto_2

    .line 1313
    :cond_3
    iget v2, v4, Lf/v;->c:I

    iget v3, v4, Lf/v;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1315
    iget-object v4, v4, Lf/v;->f:Lf/v;

    move-wide p2, v0

    .line 1304
    :cond_4
    iget-wide v2, p0, Lf/f;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 1305
    iget-object v3, v4, Lf/v;->a:[B

    .line 1306
    iget v2, v4, Lf/v;->b:I

    int-to-long v8, v2

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int v2, v8

    iget v5, v4, Lf/v;->c:I

    :goto_3
    if-ge v2, v5, :cond_3

    .line 1307
    aget-byte v8, v3, v2

    if-ne v8, p1, :cond_5

    .line 1308
    iget v3, v4, Lf/v;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1306
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move-wide v0, v6

    .line 1318
    goto :goto_0
.end method

.method public final a(Lf/f;J)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1257
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1258
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_1
    iget-wide v0, p0, Lf/f;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    .line 1262
    :goto_0
    return-wide p2

    .line 1260
    :cond_2
    iget-wide v0, p0, Lf/f;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, Lf/f;->b:J

    .line 1261
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lf/f;->a_(Lf/f;J)V

    goto :goto_0
.end method

.method public final a(Lf/z;)J
    .locals 6

    .prologue
    .line 994
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_0
    const-wide/16 v0, 0x0

    .line 996
    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lf/z;->a(Lf/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 997
    add-long/2addr v0, v2

    goto :goto_0

    .line 999
    :cond_1
    return-wide v0
.end method

.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 1512
    sget-object v0, Lf/aa;->b:Lf/aa;

    return-object v0
.end method

.method public final a(I)Lf/f;
    .locals 3

    .prologue
    .line 913
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 915
    invoke-virtual {p0, p1}, Lf/f;->b(I)Lf/f;

    .line 945
    :goto_0
    return-object p0

    .line 917
    :cond_0
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1

    .line 919
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 920
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    goto :goto_0

    .line 922
    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_3

    .line 923
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    .line 924
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_2
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 930
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 931
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    goto :goto_0

    .line 933
    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    .line 935
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 936
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 937
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 938
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    goto :goto_0

    .line 941
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lf/f;JJ)Lf/f;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 170
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-wide v0, p0, Lf/f;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    .line 172
    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    .line 196
    :cond_1
    return-object p0

    .line 174
    :cond_2
    iget-wide v0, p1, Lf/f;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lf/f;->b:J

    .line 177
    iget-object v0, p0, Lf/f;->a:Lf/v;

    .line 178
    :goto_0
    iget v1, v0, Lf/v;->c:I

    iget v2, v0, Lf/v;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    .line 179
    iget v1, v0, Lf/v;->c:I

    iget v2, v0, Lf/v;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 178
    iget-object v0, v0, Lf/v;->f:Lf/v;

    goto :goto_0

    .line 183
    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    .line 184
    new-instance v1, Lf/v;

    invoke-direct {v1, v0}, Lf/v;-><init>(Lf/v;)V

    .line 185
    iget v2, v1, Lf/v;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lf/v;->b:I

    .line 186
    iget v2, v1, Lf/v;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lf/v;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lf/v;->c:I

    .line 187
    iget-object v2, p1, Lf/f;->a:Lf/v;

    if-nez v2, :cond_4

    .line 188
    iput-object v1, v1, Lf/v;->g:Lf/v;

    iput-object v1, v1, Lf/v;->f:Lf/v;

    iput-object v1, p1, Lf/f;->a:Lf/v;

    .line 192
    :goto_2
    iget v2, v1, Lf/v;->c:I

    iget v1, v1, Lf/v;->b:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    .line 183
    iget-object v0, v0, Lf/v;->f:Lf/v;

    move-wide p2, v6

    goto :goto_1

    .line 190
    :cond_4
    iget-object v2, p1, Lf/f;->a:Lf/v;

    iget-object v2, v2, Lf/v;->g:Lf/v;

    invoke-virtual {v2, v1}, Lf/v;->a(Lf/v;)Lf/v;

    goto :goto_2
.end method

.method public final a(Lf/j;)Lf/f;
    .locals 2

    .prologue
    .line 827
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_0
    invoke-virtual {p1, p0}, Lf/j;->a(Lf/f;)V

    .line 829
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lf/f;
    .locals 2

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lf/f;->a(Ljava/lang/String;II)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;II)Lf/f;
    .locals 9

    .prologue
    const v8, 0xdfff

    const/16 v7, 0x80

    .line 837
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_1
    if-ge p3, p2, :cond_2

    .line 840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex < beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_4

    .line 843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > string.length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_3
    add-int v1, v0, v4

    iget v3, v2, Lf/v;->c:I

    sub-int/2addr v1, v3

    .line 869
    iget v3, v2, Lf/v;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lf/v;->c:I

    .line 870
    iget-wide v2, p0, Lf/f;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lf/f;->b:J

    move p2, v0

    .line 848
    :cond_4
    :goto_0
    if-ge p2, p3, :cond_c

    .line 849
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 851
    if-ge v1, v7, :cond_5

    .line 852
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/f;->e(I)Lf/v;

    move-result-object v2

    .line 853
    iget-object v3, v2, Lf/v;->a:[B

    .line 854
    iget v0, v2, Lf/v;->c:I

    sub-int v4, v0, p2

    .line 855
    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 858
    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    .line 862
    :goto_1
    if-ge v0, v5, :cond_3

    .line 863
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 864
    if-ge v6, v7, :cond_3

    .line 865
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_1

    .line 872
    :cond_5
    const/16 v0, 0x800

    if-ge v1, v0, :cond_6

    .line 874
    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 875
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 876
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 878
    :cond_6
    const v0, 0xd800

    if-lt v1, v0, :cond_7

    if-le v1, v8, :cond_8

    .line 880
    :cond_7
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 881
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 882
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 883
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 888
    :cond_8
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_a

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 889
    :goto_2
    const v2, 0xdbff

    if-gt v1, v2, :cond_9

    const v2, 0xdc00

    if-lt v0, v2, :cond_9

    if-le v0, v8, :cond_b

    .line 890
    :cond_9
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 891
    add-int/lit8 p2, p2, 0x1

    .line 892
    goto/16 :goto_0

    .line 888
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 898
    :cond_b
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 901
    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lf/f;->b(I)Lf/f;

    .line 902
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lf/f;->b(I)Lf/f;

    .line 903
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lf/f;->b(I)Lf/f;

    .line 904
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    .line 905
    add-int/lit8 p2, p2, 0x2

    .line 907
    goto/16 :goto_0

    .line 909
    :cond_c
    return-object p0
.end method

.method public final a([B)Lf/f;
    .locals 2

    .prologue
    .line 970
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lf/f;->b([BII)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 602
    :try_start_0
    iget-wide v0, p0, Lf/f;->b:J

    invoke-direct {p0, v0, v1, p1}, Lf/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 105
    iget-wide v0, p0, Lf/f;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 106
    :cond_0
    return-void
.end method

.method public final a_(Lf/f;J)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 1216
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1217
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_1
    iget-wide v0, p1, Lf/f;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    .line 1220
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    .line 1222
    iget-object v0, p1, Lf/f;->a:Lf/v;

    iget v0, v0, Lf/v;->c:I

    iget-object v1, p1, Lf/f;->a:Lf/v;

    iget v1, v1, Lf/v;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    .line 1223
    iget-object v0, p0, Lf/f;->a:Lf/v;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/f;->a:Lf/v;

    iget-object v0, v0, Lf/v;->g:Lf/v;

    move-object v1, v0

    .line 1224
    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, Lf/v;->e:Z

    if-eqz v0, :cond_5

    iget v0, v1, Lf/v;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lf/v;->d:Z

    if-eqz v0, :cond_4

    move v0, v6

    :goto_2
    int-to-long v8, v0

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x2000

    cmp-long v0, v4, v8

    if-gtz v0, :cond_5

    .line 1227
    iget-object v0, p1, Lf/f;->a:Lf/v;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lf/v;->a(Lf/v;I)V

    .line 1228
    iget-wide v0, p1, Lf/f;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lf/f;->b:J

    .line 1229
    iget-wide v0, p0, Lf/f;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lf/f;->b:J

    .line 1254
    :cond_2
    return-void

    .line 1223
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 1224
    :cond_4
    iget v0, v1, Lf/v;->b:I

    goto :goto_2

    .line 1234
    :cond_5
    iget-object v1, p1, Lf/f;->a:Lf/v;

    long-to-int v4, p2

    if-lez v4, :cond_6

    iget v0, v1, Lf/v;->c:I

    iget v5, v1, Lf/v;->b:I

    sub-int/2addr v0, v5

    if-le v4, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_7
    const/16 v0, 0x400

    if-lt v4, v0, :cond_a

    new-instance v0, Lf/v;

    invoke-direct {v0, v1}, Lf/v;-><init>(Lf/v;)V

    :goto_3
    iget v5, v0, Lf/v;->b:I

    add-int/2addr v5, v4

    iput v5, v0, Lf/v;->c:I

    iget v5, v1, Lf/v;->b:I

    add-int/2addr v4, v5

    iput v4, v1, Lf/v;->b:I

    iget-object v1, v1, Lf/v;->g:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->a(Lf/v;)Lf/v;

    iput-object v0, p1, Lf/f;->a:Lf/v;

    .line 1239
    :cond_8
    iget-object v0, p1, Lf/f;->a:Lf/v;

    .line 1240
    iget v1, v0, Lf/v;->c:I

    iget v4, v0, Lf/v;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1241
    invoke-virtual {v0}, Lf/v;->a()Lf/v;

    move-result-object v1

    iput-object v1, p1, Lf/f;->a:Lf/v;

    .line 1242
    iget-object v1, p0, Lf/f;->a:Lf/v;

    if-nez v1, :cond_b

    .line 1243
    iput-object v0, p0, Lf/f;->a:Lf/v;

    .line 1244
    iget-object v0, p0, Lf/f;->a:Lf/v;

    iget-object v1, p0, Lf/f;->a:Lf/v;

    iget-object v7, p0, Lf/f;->a:Lf/v;

    iput-object v7, v1, Lf/v;->g:Lf/v;

    iput-object v7, v0, Lf/v;->f:Lf/v;

    .line 1250
    :cond_9
    :goto_4
    iget-wide v0, p1, Lf/f;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lf/f;->b:J

    .line 1251
    iget-wide v0, p0, Lf/f;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lf/f;->b:J

    .line 1252
    sub-long/2addr p2, v4

    .line 1253
    goto/16 :goto_0

    .line 1234
    :cond_a
    invoke-static {}, Lf/w;->a()Lf/v;

    move-result-object v0

    iget-object v5, v1, Lf/v;->a:[B

    iget v7, v1, Lf/v;->b:I

    iget-object v8, v0, Lf/v;->a:[B

    invoke-static {v5, v7, v8, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 1246
    :cond_b
    iget-object v1, p0, Lf/f;->a:Lf/v;

    iget-object v1, v1, Lf/v;->g:Lf/v;

    .line 1247
    invoke-virtual {v1, v0}, Lf/v;->a(Lf/v;)Lf/v;

    move-result-object v1

    .line 1248
    iget-object v0, v1, Lf/v;->g:Lf/v;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, v1, Lf/v;->g:Lf/v;

    iget-boolean v0, v0, Lf/v;->e:Z

    if-eqz v0, :cond_9

    iget v0, v1, Lf/v;->c:I

    iget v7, v1, Lf/v;->b:I

    sub-int v7, v0, v7

    iget-object v0, v1, Lf/v;->g:Lf/v;

    iget v0, v0, Lf/v;->c:I

    rsub-int v8, v0, 0x2000

    iget-object v0, v1, Lf/v;->g:Lf/v;

    iget-boolean v0, v0, Lf/v;->d:Z

    if-eqz v0, :cond_d

    move v0, v6

    :goto_5
    add-int/2addr v0, v8

    if-gt v7, v0, :cond_9

    iget-object v0, v1, Lf/v;->g:Lf/v;

    invoke-virtual {v1, v0, v7}, Lf/v;->a(Lf/v;I)V

    invoke-virtual {v1}, Lf/v;->a()Lf/v;

    invoke-static {v1}, Lf/w;->a(Lf/v;)V

    goto :goto_4

    :cond_d
    iget-object v0, v1, Lf/v;->g:Lf/v;

    iget v0, v0, Lf/v;->b:I

    goto :goto_5
.end method

.method public final b(J)B
    .locals 7

    .prologue
    .line 298
    iget-wide v0, p0, Lf/f;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    .line 299
    iget-object v0, p0, Lf/f;->a:Lf/v;

    .line 300
    :goto_0
    iget v1, v0, Lf/v;->c:I

    iget v2, v0, Lf/v;->b:I

    sub-int/2addr v1, v2

    .line 301
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, Lf/v;->a:[B

    iget v0, v0, Lf/v;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 302
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 299
    iget-object v0, v0, Lf/v;->f:Lf/v;

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lf/f;->b:J

    return-wide v0
.end method

.method public final b(I)Lf/f;
    .locals 4

    .prologue
    .line 1012
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/f;->e(I)Lf/v;

    move-result-object v0

    .line 1013
    iget-object v1, v0, Lf/v;->a:[B

    iget v2, v0, Lf/v;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lf/v;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 1014
    iget-wide v0, p0, Lf/f;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/f;->b:J

    .line 1015
    return-object p0
.end method

.method public final b([BII)Lf/f;
    .locals 6

    .prologue
    .line 975
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    .line 978
    add-int v0, p2, p3

    .line 979
    :goto_0
    if-ge p2, v0, :cond_1

    .line 980
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lf/f;->e(I)Lf/v;

    move-result-object v1

    .line 982
    sub-int v2, v0, p2

    iget v3, v1, Lf/v;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 983
    iget-object v3, v1, Lf/v;->a:[B

    iget v4, v1, Lf/v;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 985
    add-int/2addr p2, v2

    .line 986
    iget v3, v1, Lf/v;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lf/v;->c:I

    goto :goto_0

    .line 989
    :cond_1
    iget-wide v0, p0, Lf/f;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/f;->b:J

    .line 990
    return-object p0
.end method

.method public final synthetic b(Ljava/lang/String;)Lf/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lf/f;->a(Ljava/lang/String;)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b([B)Lf/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lf/f;->a([B)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lf/j;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 1458
    invoke-virtual {p1}, Lf/j;->g()I

    move-result v2

    cmp-long v1, v8, v8

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    iget-wide v4, p0, Lf/f;->b:J

    sub-long/2addr v4, v8

    int-to-long v6, v2

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Lf/j;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    int-to-long v4, v1

    add-long/2addr v4, v8

    invoke-virtual {p0, v4, v5}, Lf/f;->b(J)B

    move-result v3

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {p1, v4}, Lf/j;->a(I)B

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Lf/f;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method

.method public final c(I)Lf/f;
    .locals 5

    .prologue
    .line 1019
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lf/f;->e(I)Lf/v;

    move-result-object v0

    .line 1020
    iget-object v1, v0, Lf/v;->a:[B

    .line 1021
    iget v2, v0, Lf/v;->c:I

    .line 1022
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1023
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1024
    iput v2, v0, Lf/v;->c:I

    .line 1025
    iget-wide v0, p0, Lf/f;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/f;->b:J

    .line 1026
    return-object p0
.end method

.method public final synthetic c([BII)Lf/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lf/f;->b([BII)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Lf/j;
    .locals 3

    .prologue
    .line 532
    new-instance v0, Lf/j;

    invoke-virtual {p0, p1, p2}, Lf/f;->e(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lf/j;-><init>([B)V

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 50
    new-instance v1, Lf/f;

    invoke-direct {v1}, Lf/f;-><init>()V

    iget-wide v2, p0, Lf/f;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lf/v;

    iget-object v2, p0, Lf/f;->a:Lf/v;

    invoke-direct {v0, v2}, Lf/v;-><init>(Lf/v;)V

    iput-object v0, v1, Lf/f;->a:Lf/v;

    iget-object v0, v1, Lf/f;->a:Lf/v;

    iget-object v2, v1, Lf/f;->a:Lf/v;

    iget-object v3, v1, Lf/f;->a:Lf/v;

    iput-object v3, v2, Lf/v;->g:Lf/v;

    iput-object v3, v0, Lf/v;->f:Lf/v;

    iget-object v0, p0, Lf/f;->a:Lf/v;

    iget-object v0, v0, Lf/v;->f:Lf/v;

    :goto_1
    iget-object v2, p0, Lf/f;->a:Lf/v;

    if-eq v0, v2, :cond_1

    iget-object v2, v1, Lf/f;->a:Lf/v;

    iget-object v2, v2, Lf/v;->g:Lf/v;

    new-instance v3, Lf/v;

    invoke-direct {v3, v0}, Lf/v;-><init>(Lf/v;)V

    invoke-virtual {v2, v3}, Lf/v;->a(Lf/v;)Lf/v;

    iget-object v0, v0, Lf/v;->f:Lf/v;

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lf/f;->b:J

    iput-wide v2, v1, Lf/f;->b:J

    move-object v0, v1

    goto :goto_0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 1509
    return-void
.end method

.method public final d(I)Lf/f;
    .locals 5

    .prologue
    .line 1034
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lf/f;->e(I)Lf/v;

    move-result-object v0

    .line 1035
    iget-object v1, v0, Lf/v;->a:[B

    .line 1036
    iget v2, v0, Lf/v;->c:I

    .line 1037
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1038
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1039
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1040
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1041
    iput v2, v0, Lf/v;->c:I

    .line 1042
    iget-wide v0, p0, Lf/f;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/f;->b:J

    .line 1043
    return-object p0
.end method

.method final d(J)Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/16 v2, 0x1

    .line 656
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lf/f;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 658
    sub-long v0, p1, v2

    invoke-direct {p0, v0, v1}, Lf/f;->k(J)Ljava/lang/String;

    move-result-object v0

    .line 659
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lf/f;->f(J)V

    .line 666
    :goto_0
    return-object v0

    .line 664
    :cond_0
    invoke-direct {p0, p1, p2}, Lf/f;->k(J)Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p0, v2, v3}, Lf/f;->f(J)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 101
    iget-wide v0, p0, Lf/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e(I)Lf/v;
    .locals 3

    .prologue
    const/16 v2, 0x2000

    .line 1151
    if-lez p1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1153
    :cond_1
    iget-object v0, p0, Lf/f;->a:Lf/v;

    if-nez v0, :cond_3

    .line 1154
    invoke-static {}, Lf/w;->a()Lf/v;

    move-result-object v0

    iput-object v0, p0, Lf/f;->a:Lf/v;

    .line 1155
    iget-object v1, p0, Lf/f;->a:Lf/v;

    iget-object v2, p0, Lf/f;->a:Lf/v;

    iget-object v0, p0, Lf/f;->a:Lf/v;

    iput-object v0, v2, Lf/v;->g:Lf/v;

    iput-object v0, v1, Lf/v;->f:Lf/v;

    .line 1162
    :cond_2
    :goto_0
    return-object v0

    .line 1158
    :cond_3
    iget-object v0, p0, Lf/f;->a:Lf/v;

    iget-object v0, v0, Lf/v;->g:Lf/v;

    .line 1159
    iget v1, v0, Lf/v;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_4

    iget-boolean v1, v0, Lf/v;->e:Z

    if-nez v1, :cond_2

    .line 1160
    :cond_4
    invoke-static {}, Lf/w;->a()Lf/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/v;->a(Lf/v;)Lf/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lf/g;

    invoke-direct {v0, p0}, Lf/g;-><init>(Lf/f;)V

    return-object v0
.end method

.method public final e(J)[B
    .locals 7

    .prologue
    .line 754
    iget-wide v0, p0, Lf/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    .line 755
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 760
    invoke-direct {p0, v0}, Lf/f;->c([B)V

    .line 761
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1585
    if-ne p0, p1, :cond_0

    move v0, v6

    .line 1614
    :goto_0
    return v0

    .line 1586
    :cond_0
    instance-of v2, p1, Lf/f;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    .line 1587
    :cond_1
    check-cast p1, Lf/f;

    .line 1588
    iget-wide v2, p0, Lf/f;->b:J

    iget-wide v4, p1, Lf/f;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    .line 1589
    :cond_2
    iget-wide v2, p0, Lf/f;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    .line 1591
    :cond_3
    iget-object v4, p0, Lf/f;->a:Lf/v;

    .line 1592
    iget-object v5, p1, Lf/f;->a:Lf/v;

    .line 1593
    iget v3, v4, Lf/v;->b:I

    .line 1594
    iget v2, v5, Lf/v;->b:I

    .line 1596
    :goto_1
    iget-wide v8, p0, Lf/f;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    .line 1597
    iget v8, v4, Lf/v;->c:I

    sub-int/2addr v8, v3

    iget v9, v5, Lf/v;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    .line 1599
    :goto_2
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_5

    .line 1600
    iget-object v12, v4, Lf/v;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v5, Lf/v;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_4

    move v0, v7

    goto :goto_0

    .line 1599
    :cond_4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_2

    .line 1603
    :cond_5
    iget v8, v4, Lf/v;->c:I

    if-ne v3, v8, :cond_6

    .line 1604
    iget-object v4, v4, Lf/v;->f:Lf/v;

    .line 1605
    iget v3, v4, Lf/v;->b:I

    .line 1608
    :cond_6
    iget v8, v5, Lf/v;->c:I

    if-ne v2, v8, :cond_7

    .line 1609
    iget-object v5, v5, Lf/v;->f:Lf/v;

    .line 1610
    iget v2, v5, Lf/v;->b:I

    .line 1596
    :cond_7
    add-long/2addr v0, v10

    goto :goto_1

    :cond_8
    move v0, v6

    .line 1614
    goto :goto_0
.end method

.method public final f()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 263
    iget-wide v0, p0, Lf/f;->b:J

    .line 264
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 272
    :cond_0
    :goto_0
    return-wide v0

    .line 267
    :cond_1
    iget-object v2, p0, Lf/f;->a:Lf/v;

    iget-object v2, v2, Lf/v;->g:Lf/v;

    .line 268
    iget v3, v2, Lf/v;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_0

    iget-boolean v3, v2, Lf/v;->e:Z

    if-eqz v3, :cond_0

    .line 269
    iget v3, v2, Lf/v;->c:I

    iget v2, v2, Lf/v;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final synthetic f(I)Lf/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lf/f;->d(I)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)V
    .locals 7

    .prologue
    .line 810
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 811
    iget-object v0, p0, Lf/f;->a:Lf/v;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 813
    :cond_1
    iget-object v0, p0, Lf/f;->a:Lf/v;

    iget v0, v0, Lf/v;->c:I

    iget-object v1, p0, Lf/f;->a:Lf/v;

    iget v1, v1, Lf/v;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 814
    iget-wide v2, p0, Lf/f;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lf/f;->b:J

    .line 815
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 816
    iget-object v1, p0, Lf/f;->a:Lf/v;

    iget v2, v1, Lf/v;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lf/v;->b:I

    .line 818
    iget-object v0, p0, Lf/f;->a:Lf/v;

    iget v0, v0, Lf/v;->b:I

    iget-object v1, p0, Lf/f;->a:Lf/v;

    iget v1, v1, Lf/v;->c:I

    if-ne v0, v1, :cond_0

    .line 819
    iget-object v0, p0, Lf/f;->a:Lf/v;

    .line 820
    invoke-virtual {v0}, Lf/v;->a()Lf/v;

    move-result-object v1

    iput-object v1, p0, Lf/f;->a:Lf/v;

    .line 821
    invoke-static {v0}, Lf/w;->a(Lf/v;)V

    goto :goto_0

    .line 824
    :cond_2
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 1506
    return-void
.end method

.method public final g()B
    .locals 10

    .prologue
    .line 276
    iget-wide v0, p0, Lf/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lf/f;->a:Lf/v;

    .line 279
    iget v1, v0, Lf/v;->b:I

    .line 280
    iget v2, v0, Lf/v;->c:I

    .line 282
    iget-object v3, v0, Lf/v;->a:[B

    .line 283
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 284
    iget-wide v6, p0, Lf/f;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lf/f;->b:J

    .line 286
    if-ne v4, v2, :cond_1

    .line 287
    invoke-virtual {v0}, Lf/v;->a()Lf/v;

    move-result-object v2

    iput-object v2, p0, Lf/f;->a:Lf/v;

    .line 288
    invoke-static {v0}, Lf/w;->a(Lf/v;)V

    .line 293
    :goto_0
    return v1

    .line 290
    :cond_1
    iput v4, v0, Lf/v;->b:I

    goto :goto_0
.end method

.method public final g(J)Lf/f;
    .locals 11

    .prologue
    .line 1072
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1074
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    move-result-object p0

    .line 1124
    :goto_0
    return-object p0

    .line 1077
    :cond_0
    const/4 v0, 0x0

    .line 1078
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_17

    .line 1079
    neg-long v2, p1

    .line 1080
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 1081
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lf/f;->a(Ljava/lang/String;)Lf/f;

    move-result-object p0

    goto :goto_0

    .line 1083
    :cond_1
    const/4 v0, 0x1

    move v4, v0

    .line 1087
    :goto_1
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 1106
    :goto_2
    if-eqz v4, :cond_2

    .line 1107
    add-int/lit8 v0, v0, 0x1

    .line 1110
    :cond_2
    invoke-virtual {p0, v0}, Lf/f;->e(I)Lf/v;

    move-result-object v5

    .line 1111
    iget-object v6, v5, Lf/v;->a:[B

    .line 1112
    iget v1, v5, Lf/v;->c:I

    add-int/2addr v1, v0

    .line 1113
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_15

    .line 1114
    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    .line 1115
    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lf/f;->c:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    .line 1116
    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_3

    .line 1087
    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    goto :goto_2

    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_9

    const/4 v0, 0x7

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    goto :goto_2

    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    const/16 v0, 0x9

    goto :goto_2

    :cond_b
    const/16 v0, 0xa

    goto :goto_2

    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    const/16 v0, 0xb

    goto :goto_2

    :cond_d
    const/16 v0, 0xc

    goto :goto_2

    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_2

    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/16 v0, 0xe

    goto/16 :goto_2

    :cond_10
    const/16 v0, 0xf

    goto/16 :goto_2

    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_13

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_12
    const/16 v0, 0x11

    goto/16 :goto_2

    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_14

    const/16 v0, 0x12

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x13

    goto/16 :goto_2

    .line 1118
    :cond_15
    if-eqz v4, :cond_16

    .line 1119
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 1122
    :cond_16
    iget v1, v5, Lf/v;->c:I

    add-int/2addr v1, v0

    iput v1, v5, Lf/v;->c:I

    .line 1123
    iget-wide v2, p0, Lf/f;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/f;->b:J

    goto/16 :goto_0

    :cond_17
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_1
.end method

.method public final synthetic g(I)Lf/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lf/f;->c(I)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final h(J)Lf/f;
    .locals 9

    .prologue
    .line 1128
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1130
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lf/f;->b(I)Lf/f;

    move-result-object p0

    .line 1143
    :goto_0
    return-object p0

    .line 1133
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1135
    invoke-virtual {p0, v1}, Lf/f;->e(I)Lf/v;

    move-result-object v2

    .line 1136
    iget-object v3, v2, Lf/v;->a:[B

    .line 1137
    iget v0, v2, Lf/v;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lf/v;->c:I

    :goto_1
    if-lt v0, v4, :cond_1

    .line 1138
    sget-object v5, Lf/f;->c:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 1139
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1137
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1141
    :cond_1
    iget v0, v2, Lf/v;->c:I

    add-int/2addr v0, v1

    iput v0, v2, Lf/v;->c:I

    .line 1142
    iget-wide v2, p0, Lf/f;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/f;->b:J

    goto :goto_0
.end method

.method public final synthetic h(I)Lf/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lf/f;->b(I)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final h()S
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    .line 307
    iget-wide v0, p0, Lf/f;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lf/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget-object v0, p0, Lf/f;->a:Lf/v;

    .line 310
    iget v1, v0, Lf/v;->b:I

    .line 311
    iget v2, v0, Lf/v;->c:I

    .line 314
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 315
    invoke-virtual {p0}, Lf/f;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 316
    invoke-virtual {p0}, Lf/f;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 317
    int-to-short v0, v0

    .line 332
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v3, v0, Lf/v;->a:[B

    .line 321
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 323
    iget-wide v6, p0, Lf/f;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lf/f;->b:J

    .line 325
    if-ne v5, v2, :cond_2

    .line 326
    invoke-virtual {v0}, Lf/v;->a()Lf/v;

    move-result-object v2

    iput-object v2, p0, Lf/f;->a:Lf/v;

    .line 327
    invoke-static {v0}, Lf/w;->a(Lf/v;)V

    .line 332
    :goto_1
    int-to-short v0, v1

    goto :goto_0

    .line 329
    :cond_2
    iput v5, v0, Lf/v;->b:I

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 1618
    iget-object v1, p0, Lf/f;->a:Lf/v;

    .line 1619
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1627
    :goto_0
    return v0

    .line 1620
    :cond_0
    const/4 v0, 0x1

    .line 1622
    :cond_1
    iget v2, v1, Lf/v;->b:I

    iget v4, v1, Lf/v;->c:I

    :goto_1
    if-ge v2, v4, :cond_2

    .line 1623
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lf/v;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    .line 1622
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 1625
    :cond_2
    iget-object v1, v1, Lf/v;->f:Lf/v;

    .line 1626
    iget-object v2, p0, Lf/f;->a:Lf/v;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public final i()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    .line 336
    iget-wide v0, p0, Lf/f;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lf/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    iget-object v1, p0, Lf/f;->a:Lf/v;

    .line 339
    iget v0, v1, Lf/v;->b:I

    .line 340
    iget v2, v1, Lf/v;->c:I

    .line 343
    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 344
    invoke-virtual {p0}, Lf/f;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 345
    invoke-virtual {p0}, Lf/f;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 346
    invoke-virtual {p0}, Lf/f;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 347
    invoke-virtual {p0}, Lf/f;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 364
    :goto_0
    return v0

    .line 350
    :cond_1
    iget-object v3, v1, Lf/v;->a:[B

    .line 351
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 355
    iget-wide v6, p0, Lf/f;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lf/f;->b:J

    .line 357
    if-ne v5, v2, :cond_2

    .line 358
    invoke-virtual {v1}, Lf/v;->a()Lf/v;

    move-result-object v2

    iput-object v2, p0, Lf/f;->a:Lf/v;

    .line 359
    invoke-static {v1}, Lf/w;->a(Lf/v;)V

    goto :goto_0

    .line 361
    :cond_2
    iput v5, v1, Lf/v;->b:I

    goto :goto_0
.end method

.method public final synthetic i(J)Lf/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lf/f;->h(J)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j(J)Lf/h;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lf/f;->g(J)Lf/f;

    move-result-object v0

    return-object v0
.end method

.method public final j()S
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lf/f;->h()S

    move-result v0

    invoke-static {v0}, Lf/ac;->a(S)S

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lf/f;->i()I

    move-result v0

    invoke-static {v0}, Lf/ac;->a(I)I

    move-result v0

    return v0
.end method

.method public final l()J
    .locals 18

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-wide v2, v0, Lf/f;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :cond_0
    const-wide/16 v4, 0x0

    .line 475
    const/4 v3, 0x0

    .line 476
    const/4 v2, 0x0

    .line 479
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lf/f;->a:Lf/v;

    .line 481
    iget-object v11, v10, Lf/v;->a:[B

    .line 482
    iget v6, v10, Lf/v;->b:I

    .line 483
    iget v12, v10, Lf/v;->c:I

    move v7, v6

    .line 485
    :goto_0
    if-ge v7, v12, :cond_6

    .line 488
    aget-byte v8, v11, v7

    .line 489
    const/16 v6, 0x30

    if-lt v8, v6, :cond_2

    const/16 v6, 0x39

    if-gt v8, v6, :cond_2

    .line 490
    add-int/lit8 v6, v8, -0x30

    .line 506
    :goto_1
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_8

    .line 507
    new-instance v2, Lf/f;

    invoke-direct {v2}, Lf/f;-><init>()V

    invoke-virtual {v2, v4, v5}, Lf/f;->h(J)Lf/f;

    move-result-object v2

    invoke-virtual {v2, v8}, Lf/f;->b(I)Lf/f;

    move-result-object v2

    .line 508
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Number too large: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lf/f;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 491
    :cond_2
    const/16 v6, 0x61

    if-lt v8, v6, :cond_3

    const/16 v6, 0x66

    if-gt v8, v6, :cond_3

    .line 492
    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_1

    .line 493
    :cond_3
    const/16 v6, 0x41

    if-lt v8, v6, :cond_4

    const/16 v6, 0x46

    if-gt v8, v6, :cond_4

    .line 494
    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_1

    .line 496
    :cond_4
    if-nez v3, :cond_5

    .line 497
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 501
    :cond_5
    const/4 v2, 0x1

    .line 515
    :cond_6
    if-ne v7, v12, :cond_9

    .line 516
    invoke-virtual {v10}, Lf/v;->a()Lf/v;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lf/f;->a:Lf/v;

    .line 517
    invoke-static {v10}, Lf/w;->a(Lf/v;)V

    .line 521
    :goto_2
    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lf/f;->a:Lf/v;

    if-nez v6, :cond_1

    .line 523
    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Lf/f;->b:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lf/f;->b:J

    .line 524
    return-wide v4

    .line 511
    :cond_8
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    .line 512
    int-to-long v8, v6

    or-long/2addr v8, v4

    .line 485
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_0

    .line 519
    :cond_9
    iput v7, v10, Lf/v;->b:I

    goto :goto_2
.end method

.method public final m()Lf/j;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Lf/j;

    invoke-virtual {p0}, Lf/f;->p()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lf/j;-><init>([B)V

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 590
    :try_start_0
    iget-wide v0, p0, Lf/f;->b:J

    sget-object v2, Lf/ac;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2}, Lf/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final o()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 645
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lf/f;->a(BJ)J

    move-result-wide v0

    .line 646
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 647
    new-instance v1, Lf/f;

    invoke-direct {v1}, Lf/f;-><init>()V

    .line 648
    const-wide/16 v4, 0x20

    iget-wide v6, p0, Lf/f;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lf/f;->a(Lf/f;JJ)Lf/f;

    .line 649
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lf/f;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 650
    invoke-virtual {v1}, Lf/f;->m()Lf/j;

    move-result-object v1

    invoke-virtual {v1}, Lf/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_0
    invoke-virtual {p0, v0, v1}, Lf/f;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()[B
    .locals 2

    .prologue
    .line 747
    :try_start_0
    iget-wide v0, p0, Lf/f;->b:J

    invoke-virtual {p0, v0, v1}, Lf/f;->e(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 802
    :try_start_0
    iget-wide v0, p0, Lf/f;->b:J

    invoke-virtual {p0, v0, v1}, Lf/f;->f(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    return-void

    .line 803
    :catch_0
    move-exception v0

    .line 804
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic r()Lf/h;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1635
    iget-wide v0, p0, Lf/f;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lf/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lf/f;->b:J

    long-to-int v1, v0

    if-nez v1, :cond_1

    sget-object v0, Lf/j;->b:Lf/j;

    :goto_0
    invoke-virtual {v0}, Lf/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lf/x;

    invoke-direct {v0, p0, v1}, Lf/x;-><init>(Lf/f;I)V

    goto :goto_0
.end method
