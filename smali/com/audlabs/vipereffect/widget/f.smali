.class final Lcom/audlabs/vipereffect/widget/f;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/widget/Gallery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 68
    check-cast p2, Landroid/widget/TextView;

    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$0(Lcom/audlabs/vipereffect/widget/Gallery;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$1(Lcom/audlabs/vipereffect/widget/Gallery;)I

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$3(Lcom/audlabs/vipereffect/widget/Gallery;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$3(Lcom/audlabs/vipereffect/widget/Gallery;)Landroid/widget/TextView;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$3(Lcom/audlabs/vipereffect/widget/Gallery;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$0(Lcom/audlabs/vipereffect/widget/Gallery;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$4(Lcom/audlabs/vipereffect/widget/Gallery;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0, p2}, Lcom/audlabs/vipereffect/widget/Gallery;->access$5(Lcom/audlabs/vipereffect/widget/Gallery;Landroid/widget/TextView;)V

    .line 76
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$0(Lcom/audlabs/vipereffect/widget/Gallery;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$6(Lcom/audlabs/vipereffect/widget/Gallery;)Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$6(Lcom/audlabs/vipereffect/widget/Gallery;)Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;->onItemSelected(I)V

    .line 79
    :cond_2
    return-void

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$2(Lcom/audlabs/vipereffect/widget/Gallery;)I

    move-result v0

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/f;->a:Lcom/audlabs/vipereffect/widget/Gallery;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/Gallery;->access$2(Lcom/audlabs/vipereffect/widget/Gallery;)I

    move-result v0

    goto :goto_1
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method
