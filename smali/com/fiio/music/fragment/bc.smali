.class final Lcom/fiio/music/fragment/bc;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Lcom/fiio/music/test/m;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bc;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fiio/music/fragment/bc;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0, p1}, Lcom/fiio/music/fragment/TabAFm;->access$27(Lcom/fiio/music/fragment/TabAFm;Ljava/util/List;)V

    .line 398
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 399
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/fragment/bc;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 400
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 401
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 402
    iget-object v0, p0, Lcom/fiio/music/fragment/bc;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$28(Lcom/fiio/music/fragment/TabAFm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 407
    :goto_0
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 408
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 409
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 410
    iget-object v4, p0, Lcom/fiio/music/fragment/bc;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    new-instance v0, Lcom/fiio/music/fragment/bd;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/fragment/bd;-><init>(Lcom/fiio/music/fragment/bc;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    new-instance v0, Lcom/fiio/music/fragment/be;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/fragment/be;-><init>(Lcom/fiio/music/fragment/bc;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    :cond_0
    return-void

    .line 405
    :cond_1
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method
