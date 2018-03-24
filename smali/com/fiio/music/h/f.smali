.class final Lcom/fiio/music/h/f;
.super Ljava/lang/Object;
.source "LyricLoadHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fiio/music/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/h/e;


# direct methods
.method constructor <init>(Lcom/fiio/music/h/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/h/f;->a:Lcom/fiio/music/h/e;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 1
    check-cast p1, Lcom/fiio/music/i/a;

    check-cast p2, Lcom/fiio/music/i/a;

    invoke-virtual {p1}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
