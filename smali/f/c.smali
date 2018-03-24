.class final Lf/c;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lf/z;


# instance fields
.field final synthetic a:Lf/z;

.field final synthetic b:Lf/a;


# direct methods
.method constructor <init>(Lf/a;Lf/z;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lf/c;->b:Lf/a;

    iput-object p2, p0, Lf/c;->a:Lf/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf/f;J)J
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lf/c;->b:Lf/a;

    invoke-virtual {v0}, Lf/a;->c()V

    .line 236
    :try_start_0
    iget-object v0, p0, Lf/c;->a:Lf/z;

    invoke-interface {v0, p1, p2, p3}, Lf/z;->a(Lf/f;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 237
    iget-object v2, p0, Lf/c;->b:Lf/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lf/a;->a(Z)V

    .line 238
    return-wide v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    :try_start_1
    iget-object v1, p0, Lf/c;->b:Lf/a;

    invoke-virtual {v1, v0}, Lf/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/c;->b:Lf/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf/a;->a(Z)V

    throw v0
.end method

.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lf/c;->b:Lf/a;

    return-object v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 247
    :try_start_0
    iget-object v0, p0, Lf/c;->a:Lf/z;

    invoke-interface {v0}, Lf/z;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v0, p0, Lf/c;->b:Lf/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/a;->a(Z)V

    .line 255
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    :try_start_1
    iget-object v1, p0, Lf/c;->b:Lf/a;

    invoke-virtual {v1, v0}, Lf/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/c;->b:Lf/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf/c;->a:Lf/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
