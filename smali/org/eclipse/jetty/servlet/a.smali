.class final Lorg/eclipse/jetty/servlet/a;
.super Ljava/lang/Object;
.source "ErrorPageErrorHandler.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/a;->a:Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    if-le p2, p3, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "from>to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput p2, p0, Lorg/eclipse/jetty/servlet/a;->b:I

    .line 263
    iput p3, p0, Lorg/eclipse/jetty/servlet/a;->c:I

    .line 264
    iput-object p4, p0, Lorg/eclipse/jetty/servlet/a;->d:Ljava/lang/String;

    .line 265
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method final a(I)Z
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lorg/eclipse/jetty/servlet/a;->b:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/servlet/a;->c:I

    if-gt p1, v0, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jetty/servlet/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/servlet/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
