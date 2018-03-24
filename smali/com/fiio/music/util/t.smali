.class final Lcom/fiio/music/util/t;
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
    iput-object p1, p0, Lcom/fiio/music/util/t;->a:Lcom/fiio/music/util/FiioPopupWindow;

    .line 333
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
    .line 339
    iget-object v0, p0, Lcom/fiio/music/util/t;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->e(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/fiio/music/util/t;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->e(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/t;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/fiio/music/util/ae;->a(ILcom/fiio/music/util/ac;)V

    .line 344
    :cond_0
    return-void
.end method
