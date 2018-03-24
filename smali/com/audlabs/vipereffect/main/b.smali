.class final Lcom/audlabs/vipereffect/main/b;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/b;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/audlabs/vipereffect/main/b;)Lcom/audlabs/vipereffect/main/MainActivity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/b;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/main/b;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    const-string v1, "ViPERFX"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    iget-object v1, p0, Lcom/audlabs/vipereffect/main/b;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    const v2, 0x7f0c01d3

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    iget-object v1, p0, Lcom/audlabs/vipereffect/main/b;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    iget-object v1, p0, Lcom/audlabs/vipereffect/main/b;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/audlabs/vipereffect/main/c;

    invoke-direct {v2, p0}, Lcom/audlabs/vipereffect/main/c;-><init>(Lcom/audlabs/vipereffect/main/b;)V

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    return-void
.end method
