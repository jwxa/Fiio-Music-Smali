.class public final Lcom/fiio/music/util/bn;
.super Ljava/lang/Object;
.source "OnlineFeedBackAlertDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 5

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/fiio/music/custom/g;

    invoke-direct {v0, p1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 27
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04002b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 29
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 31
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 32
    const v4, 0x7f0c01ff

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    if-eqz p2, :cond_0

    .line 35
    const v4, 0x7f0c0202

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_0
    new-instance v0, Lcom/fiio/music/util/bo;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/fiio/music/util/bo;-><init>(Lcom/fiio/music/util/bn;ZLandroid/app/Activity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v0, Lcom/fiio/music/util/bp;

    invoke-direct {v0, p0, v3, p1}, Lcom/fiio/music/util/bp;-><init>(Lcom/fiio/music/util/bn;Lcom/fiio/music/custom/f;Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void

    .line 37
    :cond_0
    const v4, 0x7f0c0203

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
