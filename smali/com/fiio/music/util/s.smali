.class final Lcom/fiio/music/util/s;
.super Ljava/lang/Object;
.source "FiioPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/util/FiioPopupWindow;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/FiioPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/s;->a:Lcom/fiio/music/util/FiioPopupWindow;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fiio/music/util/s;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/fiio/music/util/s;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/s;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/fiio/music/util/x;->a(ILcom/fiio/music/util/aa;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/s;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->c(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/w;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/fiio/music/util/s;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->c(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/w;

    iget-object v0, p0, Lcom/fiio/music/util/s;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->d(Lcom/fiio/music/util/FiioPopupWindow;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Lcom/fiio/music/util/s;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    .line 330
    :cond_1
    return-void
.end method
