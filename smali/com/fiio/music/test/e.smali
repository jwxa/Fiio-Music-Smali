.class final Lcom/fiio/music/test/e;
.super Ljava/lang/Object;
.source "TestActivityEnter.java"

# interfaces
.implements Lcom/fiio/music/g/a;


# instance fields
.field final synthetic a:Lcom/fiio/music/test/TestActivityEnter;


# direct methods
.method constructor <init>(Lcom/fiio/music/test/TestActivityEnter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/test/e;->a:Lcom/fiio/music/test/TestActivityEnter;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentMillis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 163
    return-void
.end method
