.class public final Lcom/fiio/music/util/p;
.super Ljava/lang/Object;
.source "ExitDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/fiio/music/custom/g;

    invoke-direct {v0, p1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 28
    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 34
    :goto_0
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v0, Lcom/fiio/music/util/q;

    invoke-direct {v0, p0, v3, p1}, Lcom/fiio/music/util/q;-><init>(Lcom/fiio/music/util/p;Lcom/fiio/music/custom/f;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v0, Lcom/fiio/music/util/r;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/util/r;-><init>(Lcom/fiio/music/util/p;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void

    .line 32
    :cond_0
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method
