.class public abstract Le/as;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Le/as;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    invoke-virtual {v0, p0}, Lf/f;->a([B)Lf/f;

    move-result-object v0

    .line 209
    array-length v1, p0

    int-to-long v2, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Le/at;

    invoke-direct {v1, v2, v3, v0}, Le/at;-><init>(JLf/i;)V

    return-object v1
.end method


# virtual methods
.method public abstract a()Le/af;
.end method

.method public abstract b()J
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Le/as;->d()Lf/i;

    move-result-object v0

    invoke-interface {v0}, Lf/i;->e()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Le/as;->d()Lf/i;

    move-result-object v0

    invoke-static {v0}, Le/a/c;->a(Ljava/io/Closeable;)V

    .line 187
    return-void
.end method

.method public abstract d()Lf/i;
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Le/as;->d()Lf/i;

    move-result-object v1

    .line 173
    :try_start_0
    invoke-virtual {p0}, Le/as;->a()Le/af;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Le/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Le/af;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Le/a/c;->a(Lf/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 174
    invoke-interface {v1, v0}, Lf/i;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 176
    invoke-static {v1}, Le/a/c;->a(Ljava/io/Closeable;)V

    .line 174
    return-object v0

    .line 173
    :cond_0
    :try_start_1
    sget-object v0, Le/a/c;->e:Ljava/nio/charset/Charset;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    invoke-static {v1}, Le/a/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method
