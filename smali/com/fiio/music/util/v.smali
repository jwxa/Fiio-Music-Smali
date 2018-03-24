.class final Lcom/fiio/music/util/v;
.super Ljava/lang/Object;
.source "FiioPopupWindow.java"

# interfaces
.implements Lcom/fiio/music/util/dslv/m;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/FiioPopupWindow;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/FiioPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final drop(II)V
    .locals 2

    .prologue
    .line 435
    if-eq p1, p2, :cond_0

    .line 436
    iget-object v0, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget v0, v0, Lcom/fiio/music/util/FiioPopupWindow;->b:I

    iget-object v1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget v1, v1, Lcom/fiio/music/util/FiioPopupWindow;->a:I

    if-ne v0, v1, :cond_1

    .line 438
    iget-object v0, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 439
    iget-object v1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fiio/music/util/ac;->a(I)V

    .line 440
    iget-object v1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/fiio/music/util/ac;->a(II)V

    .line 443
    iget-object v0, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ac;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->h(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->a(Ljava/util/ArrayList;)V

    .line 448
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/cj;->a(Ljava/util/ArrayList;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/aa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    iget-object v1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fiio/music/util/aa;->a(I)V

    .line 453
    iget-object v1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/fiio/music/util/aa;->a(Ljava/lang/String;I)V

    .line 455
    iget-object v0, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->h(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v1, v1, Lcom/fiio/music/util/FiioPopupWindow;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Ljava/util/List;)V

    .line 457
    iget-object v0, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fiio/music/util/aa;->a(II)V

    .line 459
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/v;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/util/aa;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cj;->b(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
