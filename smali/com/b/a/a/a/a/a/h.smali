.class public final Lcom/b/a/a/a/a/a/h;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Lcom/b/a/a/a/a;


# static fields
.field public static final a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected b:Lcom/b/a/a/a/a/a/a;

.field protected final c:Lcom/b/a/a/a/b/a;

.field protected d:I

.field protected e:Landroid/graphics/Bitmap$CompressFormat;

.field protected f:I

.field private g:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/b/a/a/a/a/a/h;->a:Landroid/graphics/Bitmap$CompressFormat;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/b/a/a/a/b/a;JI)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x8000

    iput v0, p0, Lcom/b/a/a/a/a/a/h;->d:I

    .line 57
    sget-object v0, Lcom/b/a/a/a/a/a/h;->a:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/b/a/a/a/a/a/h;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/b/a/a/a/a/a/h;->f:I

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    cmp-long v0, p4, v2

    if-gez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxSize argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    if-gez p6, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxFileCount argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    if-nez p3, :cond_3

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3
    cmp-long v0, p4, v2

    if-nez v0, :cond_5

    .line 98
    const-wide v4, 0x7fffffffffffffffL

    .line 100
    :goto_0
    if-nez p6, :cond_4

    .line 101
    const v6, 0x7fffffff

    .line 104
    :goto_1
    iput-object p2, p0, Lcom/b/a/a/a/a/a/h;->g:Ljava/io/File;

    .line 105
    iput-object p3, p0, Lcom/b/a/a/a/a/a/h;->c:Lcom/b/a/a/a/b/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/a/a/a/h;->a(Ljava/io/File;Ljava/io/File;JI)V

    .line 107
    return-void

    :cond_4
    move v6, p6

    goto :goto_1

    :cond_5
    move-wide v4, p4

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/io/File;JI)V
    .locals 7

    .prologue
    .line 112
    :try_start_0
    invoke-static {p1, p3, p4, p5}, Lcom/b/a/a/a/a/a/a;->a(Ljava/io/File;JI)Lcom/b/a/a/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/a/a/h;->b:Lcom/b/a/a/a/a/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/b/a/c/e;->a(Ljava/lang/Throwable;)V

    .line 115
    if-eqz p2, :cond_1

    .line 116
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/a/a/a/h;->a(Ljava/io/File;Ljava/io/File;JI)V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/b/a/a/a/a/a/h;->b:Lcom/b/a/a/a/a/a/a;

    if-nez v1, :cond_0

    .line 119
    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/b/a/a/a/a/a/h;->c:Lcom/b/a/a/a/b/a;

    invoke-interface {v0, p1}, Lcom/b/a/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/a/a/a/h;->b:Lcom/b/a/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/b/a/a/a/a/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/a/a;->a(Ljava/lang/String;)Lcom/b/a/a/a/a/a/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 134
    if-nez v2, :cond_1

    .line 139
    :goto_0
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v2}, Lcom/b/a/a/a/a/a/g;->close()V

    .line 137
    :cond_0
    :goto_1
    return-object v0

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/b/a/a/a/a/a/g;->a()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/b/a/c/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v2}, Lcom/b/a/a/a/a/a/g;->close()V

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 139
    :goto_3
    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {v2}, Lcom/b/a/a/a/a/a/g;->close()V

    .line 142
    :cond_2
    throw v0

    .line 138
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 135
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/b/a/a/a/a/a/h;->b:Lcom/b/a/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/b/a/a/a/a/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/a/a;->b(Ljava/lang/String;)Lcom/b/a/a/a/a/a/d;

    move-result-object v1

    .line 170
    if-nez v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    .line 174
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Lcom/b/a/a/a/a/a/d;->a()Ljava/io/OutputStream;

    move-result-object v0

    iget v3, p0, Lcom/b/a/a/a/a/a/h;->d:I

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a/a/a/h;->e:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/b/a/a/a/a/a/h;->f:I

    invoke-virtual {p2, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 179
    invoke-static {v2}, Lcom/b/a/c/c;->a(Ljava/io/Closeable;)V

    .line 181
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v1}, Lcom/b/a/a/a/a/a/d;->b()V

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    invoke-static {v2}, Lcom/b/a/c/c;->a(Ljava/io/Closeable;)V

    .line 180
    throw v0

    .line 184
    :cond_1
    invoke-virtual {v1}, Lcom/b/a/a/a/a/a/d;->c()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;Lcom/b/a/c/d;)Z
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/b/a/a/a/a/a/h;->b:Lcom/b/a/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/b/a/a/a/a/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/a/a;->b(Ljava/lang/String;)Lcom/b/a/a/a/a/a/d;

    move-result-object v1

    .line 148
    if-nez v1, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    .line 152
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Lcom/b/a/a/a/a/a/d;->a()Ljava/io/OutputStream;

    move-result-object v0

    iget v3, p0, Lcom/b/a/a/a/a/a/h;->d:I

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 155
    :try_start_0
    iget v0, p0, Lcom/b/a/a/a/a/a/h;->d:I

    invoke-static {p2, v2, p3, v0}, Lcom/b/a/c/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/b/a/c/d;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 157
    invoke-static {v2}, Lcom/b/a/c/c;->a(Ljava/io/Closeable;)V

    .line 158
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v1}, Lcom/b/a/a/a/a/a/d;->b()V

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    invoke-static {v2}, Lcom/b/a/c/c;->a(Ljava/io/Closeable;)V

    .line 161
    invoke-virtual {v1}, Lcom/b/a/a/a/a/a/d;->c()V

    .line 163
    throw v0

    .line 161
    :cond_1
    invoke-virtual {v1}, Lcom/b/a/a/a/a/a/d;->c()V

    goto :goto_0
.end method
