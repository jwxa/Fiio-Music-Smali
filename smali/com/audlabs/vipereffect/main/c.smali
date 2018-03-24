.class final Lcom/audlabs/vipereffect/main/c;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/b;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/c;->a:Lcom/audlabs/vipereffect/main/b;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->resetting()V

    .line 71
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/c;->a:Lcom/audlabs/vipereffect/main/b;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/b;->a(Lcom/audlabs/vipereffect/main/b;)Lcom/audlabs/vipereffect/main/MainActivity;

    move-result-object v0

    const-string v1, "kuishe"

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/main/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/c;->a:Lcom/audlabs/vipereffect/main/b;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/b;->a(Lcom/audlabs/vipereffect/main/b;)Lcom/audlabs/vipereffect/main/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainActivity;->finish()V

    .line 77
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/c;->a:Lcom/audlabs/vipereffect/main/b;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/b;->a(Lcom/audlabs/vipereffect/main/b;)Lcom/audlabs/vipereffect/main/MainActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/audlabs/vipereffect/main/c;->a:Lcom/audlabs/vipereffect/main/b;

    invoke-static {v2}, Lcom/audlabs/vipereffect/main/b;->a(Lcom/audlabs/vipereffect/main/b;)Lcom/audlabs/vipereffect/main/MainActivity;

    move-result-object v2

    const-class v3, Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
