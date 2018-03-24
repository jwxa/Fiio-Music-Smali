.class public final Le/p;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# static fields
.field public static final a:Le/p;

.field public static final b:Le/p;

.field public static final c:Le/p;

.field private static final h:[Le/l;


# instance fields
.field final d:Z

.field final e:Z

.field final f:[Ljava/lang/String;

.field final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 45
    const/16 v0, 0xf

    new-array v0, v0, [Le/l;

    sget-object v2, Le/l;->aW:Le/l;

    aput-object v2, v0, v1

    sget-object v2, Le/l;->ba:Le/l;

    aput-object v2, v0, v6

    sget-object v2, Le/l;->aX:Le/l;

    aput-object v2, v0, v7

    sget-object v2, Le/l;->bb:Le/l;

    aput-object v2, v0, v8

    sget-object v2, Le/l;->bh:Le/l;

    aput-object v2, v0, v9

    const/4 v2, 0x5

    sget-object v3, Le/l;->bg:Le/l;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Le/l;->ax:Le/l;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Le/l;->aH:Le/l;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Le/l;->ay:Le/l;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    sget-object v3, Le/l;->aI:Le/l;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    sget-object v3, Le/l;->af:Le/l;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    sget-object v3, Le/l;->ag:Le/l;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    sget-object v3, Le/l;->D:Le/l;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    sget-object v3, Le/l;->H:Le/l;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    sget-object v3, Le/l;->h:Le/l;

    aput-object v3, v0, v2

    sput-object v0, Le/p;->h:[Le/l;

    .line 68
    new-instance v2, Le/q;

    invoke-direct {v2, v6}, Le/q;-><init>(Z)V

    sget-object v3, Le/p;->h:[Le/l;

    .line 69
    iget-boolean v0, v2, Le/q;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, v3

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget-object v5, v3, v0

    iget-object v5, v5, Le/l;->bi:Ljava/lang/String;

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Le/q;->a([Ljava/lang/String;)Le/q;

    move-result-object v0

    new-array v2, v9, [Le/av;

    sget-object v3, Le/av;->a:Le/av;

    aput-object v3, v2, v1

    sget-object v3, Le/av;->b:Le/av;

    aput-object v3, v2, v6

    sget-object v3, Le/av;->c:Le/av;

    aput-object v3, v2, v7

    sget-object v3, Le/av;->d:Le/av;

    aput-object v3, v2, v8

    .line 70
    invoke-virtual {v0, v2}, Le/q;->a([Le/av;)Le/q;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Le/q;->a()Le/q;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Le/q;->b()Le/p;

    move-result-object v0

    sput-object v0, Le/p;->a:Le/p;

    .line 75
    new-instance v0, Le/q;

    sget-object v2, Le/p;->a:Le/p;

    invoke-direct {v0, v2}, Le/q;-><init>(Le/p;)V

    new-array v2, v6, [Le/av;

    sget-object v3, Le/av;->d:Le/av;

    aput-object v3, v2, v1

    .line 76
    invoke-virtual {v0, v2}, Le/q;->a([Le/av;)Le/q;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Le/q;->a()Le/q;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Le/q;->b()Le/p;

    move-result-object v0

    sput-object v0, Le/p;->b:Le/p;

    .line 81
    new-instance v0, Le/q;

    invoke-direct {v0, v1}, Le/q;-><init>(Z)V

    invoke-virtual {v0}, Le/q;->b()Le/p;

    move-result-object v0

    sput-object v0, Le/p;->c:Le/p;

    return-void
.end method

.method constructor <init>(Le/q;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-boolean v0, p1, Le/q;->a:Z

    iput-boolean v0, p0, Le/p;->d:Z

    .line 90
    iget-object v0, p1, Le/q;->b:[Ljava/lang/String;

    iput-object v0, p0, Le/p;->f:[Ljava/lang/String;

    .line 91
    iget-object v0, p1, Le/q;->c:[Ljava/lang/String;

    iput-object v0, p0, Le/p;->g:[Ljava/lang/String;

    .line 92
    iget-boolean v0, p1, Le/q;->d:Z

    iput-boolean v0, p0, Le/p;->e:Z

    .line 93
    return-void
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 202
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 206
    invoke-static {p1, v3}, Le/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Le/av;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Le/p;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Le/p;->g:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    iget-object v2, p0, Le/p;->g:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 122
    invoke-static {v4}, Le/av;->a(Ljava/lang/String;)Le/av;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Le/p;->f:[Ljava/lang/String;

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Le/p;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Le/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Le/p;->g:[Ljava/lang/String;

    if-eqz v0, :cond_4

    const-class v0, Ljava/lang/String;

    iget-object v2, p0, Le/p;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Le/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Le/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, Le/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Le/q;

    invoke-direct {v2, p0}, Le/q;-><init>(Le/p;)V

    invoke-virtual {v2, v1}, Le/q;->a([Ljava/lang/String;)Le/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/q;->b([Ljava/lang/String;)Le/q;

    move-result-object v0

    invoke-virtual {v0}, Le/q;->b()Le/p;

    move-result-object v0

    .line 135
    iget-object v1, v0, Le/p;->g:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, v0, Le/p;->g:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 138
    :cond_1
    iget-object v1, v0, Le/p;->f:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 139
    iget-object v0, v0, Le/p;->f:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 141
    :cond_2
    return-void

    .line 133
    :cond_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Le/p;->d:Z

    return v0
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-boolean v1, p0, Le/p;->d:Z

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    iget-object v1, p0, Le/p;->g:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/p;->g:[Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le/p;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    :cond_2
    iget-object v1, p0, Le/p;->f:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/p;->f:[Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le/p;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Le/p;->e:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 214
    instance-of v2, p1, Le/p;

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 217
    :cond_2
    check-cast p1, Le/p;

    .line 218
    iget-boolean v2, p0, Le/p;->d:Z

    iget-boolean v3, p1, Le/p;->d:Z

    if-ne v2, v3, :cond_0

    .line 220
    iget-boolean v2, p0, Le/p;->d:Z

    if-eqz v2, :cond_3

    .line 221
    iget-object v2, p0, Le/p;->f:[Ljava/lang/String;

    iget-object v3, p1, Le/p;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Le/p;->g:[Ljava/lang/String;

    iget-object v3, p1, Le/p;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-boolean v2, p0, Le/p;->e:Z

    iget-boolean v3, p1, Le/p;->e:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 226
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 230
    const/16 v0, 0x11

    .line 231
    iget-boolean v1, p0, Le/p;->d:Z

    if-eqz v1, :cond_0

    .line 232
    iget-object v0, p0, Le/p;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/p;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Le/p;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 236
    :cond_0
    return v0

    .line 234
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    iget-boolean v0, p0, Le/p;->d:Z

    if-nez v0, :cond_0

    .line 241
    const-string v0, "ConnectionSpec()"

    .line 246
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Le/p;->f:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/p;->f:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_2
    iget-object v1, p0, Le/p;->g:[Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Le/p;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/p;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Le/p;->f:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Le/p;->f:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-static {v4}, Le/l;->a(Ljava/lang/String;)Le/l;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "[all enabled]"

    goto :goto_2

    .line 245
    :cond_4
    const-string v1, "[all enabled]"

    goto :goto_3
.end method
