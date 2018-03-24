.class final Lcom/audlabs/vipereffect/a;
.super Ljava/lang/Object;
.source "EffectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/EffectActivity;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/EffectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/a;->a:Lcom/audlabs/vipereffect/EffectActivity;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/audlabs/vipereffect/a;->a:Lcom/audlabs/vipereffect/EffectActivity;

    const-class v2, Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    iget-object v1, p0, Lcom/audlabs/vipereffect/a;->a:Lcom/audlabs/vipereffect/EffectActivity;

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/EffectActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
