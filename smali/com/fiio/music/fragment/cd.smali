.class final Lcom/fiio/music/fragment/cd;
.super Ljava/lang/Object;
.source "TabDFm.java"

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
.field final synthetic a:Lcom/fiio/music/fragment/TabDFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabDFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/cd;->a:Lcom/fiio/music/fragment/TabDFm;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 425
    iget-object v0, p0, Lcom/fiio/music/fragment/cd;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$0(Lcom/fiio/music/fragment/TabDFm;)I

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/fiio/music/fragment/cd;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$1(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/cd;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$1(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/fiio/music/fragment/cd;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$1(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/ListItemAdapter;->toggleCheckBox(I)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    check-cast p2, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {p2}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;

    iget-object v0, v0, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textView:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 433
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-object v2, p0, Lcom/fiio/music/fragment/cd;->a:Lcom/fiio/music/fragment/TabDFm;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3, v1, v0}, Lcom/fiio/music/fragment/TabDFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
