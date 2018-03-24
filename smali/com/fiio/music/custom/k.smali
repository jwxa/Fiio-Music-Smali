.class final Lcom/fiio/music/custom/k;
.super Ljava/lang/Object;
.source "XfMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/custom/j;


# direct methods
.method constructor <init>(Lcom/fiio/music/custom/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    iget-object v0, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    invoke-static {v0}, Lcom/fiio/music/custom/j;->a(Lcom/fiio/music/custom/j;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    invoke-static {v0}, Lcom/fiio/music/custom/j;->b(Lcom/fiio/music/custom/j;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    invoke-static {v2}, Lcom/fiio/music/custom/j;->a(Lcom/fiio/music/custom/j;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f080005

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    invoke-static {v0}, Lcom/fiio/music/custom/j;->b(Lcom/fiio/music/custom/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    invoke-static {v0}, Lcom/fiio/music/custom/j;->c(Lcom/fiio/music/custom/j;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    invoke-static {v2}, Lcom/fiio/music/custom/j;->a(Lcom/fiio/music/custom/j;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    invoke-static {v0}, Lcom/fiio/music/custom/j;->c(Lcom/fiio/music/custom/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/fiio/music/custom/k;->a:Lcom/fiio/music/custom/j;

    invoke-static {v0, v1}, Lcom/fiio/music/custom/j;->a(Lcom/fiio/music/custom/j;I)V

    .line 80
    :cond_0
    return-void
.end method
