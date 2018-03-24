.class final Le/ah;
.super Le/a/a;
.source "OkHttpClient.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Le/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/n;Le/a;Le/a/b/g;)Le/a/b/c;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p1, p2, p3}, Le/n;->a(Le/a;Le/a/b/g;)Le/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Le/n;)Le/a/b/d;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p1, Le/n;->a:Le/a/b/d;

    return-object v0
.end method

.method public final a(Le/p;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p1, p2, p3}, Le/p;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 162
    return-void
.end method

.method public final a(Le/z;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    const-string v0, ":"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le/z;->b(Ljava/lang/String;Ljava/lang/String;)Le/z;

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Le/z;->b(Ljava/lang/String;Ljava/lang/String;)Le/z;

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Le/z;->b(Ljava/lang/String;Ljava/lang/String;)Le/z;

    goto :goto_0
.end method

.method public final a(Le/z;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p1, p2, p3}, Le/z;->b(Ljava/lang/String;Ljava/lang/String;)Le/z;

    .line 135
    return-void
.end method

.method public final a(Le/n;Le/a/b/c;)Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p1, p2}, Le/n;->b(Le/a/b/c;)Z

    move-result v0

    return v0
.end method

.method public final b(Le/n;Le/a/b/c;)V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p1, p2}, Le/n;->a(Le/a/b/c;)V

    .line 153
    return-void
.end method
