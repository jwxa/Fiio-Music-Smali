.class final Lcom/fiio/music/test/b;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/test/TestActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/test/TestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/test/b;->a:Lcom/fiio/music/test/TestActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fiio/music/test/b;->a:Lcom/fiio/music/test/TestActivity;

    invoke-static {v0}, Lcom/fiio/music/test/TestActivity;->a(Lcom/fiio/music/test/TestActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/test/TestActivity;->a(Lcom/fiio/music/test/TestActivity;I)V

    .line 103
    iget-object v0, p0, Lcom/fiio/music/test/b;->a:Lcom/fiio/music/test/TestActivity;

    invoke-static {v0}, Lcom/fiio/music/test/TestActivity;->a(Lcom/fiio/music/test/TestActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/test/b;->a:Lcom/fiio/music/test/TestActivity;

    invoke-static {v1}, Lcom/fiio/music/test/TestActivity;->b(Lcom/fiio/music/test/TestActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/fiio/music/test/b;->a:Lcom/fiio/music/test/TestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/test/TestActivity;->a(Lcom/fiio/music/test/TestActivity;I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/test/b;->a:Lcom/fiio/music/test/TestActivity;

    invoke-static {v0}, Lcom/fiio/music/test/TestActivity;->c(Lcom/fiio/music/test/TestActivity;)V

    .line 107
    return-void
.end method
