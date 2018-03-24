.class final Lcom/fiio/music/fragment/ap;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ap;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/ap;->b:Landroid/app/AlertDialog;

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/fiio/music/fragment/ap;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$6(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1006
    iget-object v1, p0, Lcom/fiio/music/fragment/ap;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$7(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    const-string v1, "UPDATE_MODE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1008
    iget-object v1, p0, Lcom/fiio/music/fragment/ap;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$8(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ap;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c0081

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1014
    iget-object v0, p0, Lcom/fiio/music/fragment/ap;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1015
    return-void

    .line 1010
    :cond_0
    const-string v1, "UPDATE_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1011
    iget-object v1, p0, Lcom/fiio/music/fragment/ap;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$8(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ap;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c0082

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
