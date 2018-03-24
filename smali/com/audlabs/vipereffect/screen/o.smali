.class final Lcom/audlabs/vipereffect/screen/o;
.super Ljava/lang/Object;
.source "DynamicsystemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/o;->a:Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/audlabs/vipereffect/screen/o;)Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/o;->a:Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/o;->a:Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v1, 0x7f0c0147

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 57
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/o;->a:Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->outputsArray:[Ljava/lang/String;

    new-instance v2, Lcom/audlabs/vipereffect/screen/p;

    invoke-direct {v2, p0}, Lcom/audlabs/vipereffect/screen/p;-><init>(Lcom/audlabs/vipereffect/screen/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    const v1, 0x7f0c0189

    new-instance v2, Lcom/audlabs/vipereffect/screen/q;

    invoke-direct {v2, p0}, Lcom/audlabs/vipereffect/screen/q;-><init>(Lcom/audlabs/vipereffect/screen/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void
.end method
