.class final Lcom/fiio/music/fragment/x;
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
    iput-object p1, p0, Lcom/fiio/music/fragment/x;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/x;->b:Landroid/app/AlertDialog;

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/fiio/music/fragment/x;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$45(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1509
    const-string v1, "DEFAULT_VOICE"

    iget-object v2, p0, Lcom/fiio/music/fragment/x;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$44(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1510
    iget-object v1, p0, Lcom/fiio/music/fragment/x;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$4(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    const-string v1, "SWITCH"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1512
    iget-object v1, p0, Lcom/fiio/music/fragment/x;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$46(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fiio/music/fragment/x;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$44(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1518
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1519
    iget-object v0, p0, Lcom/fiio/music/fragment/x;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1520
    return-void

    .line 1514
    :cond_0
    const-string v1, "SWITCH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1516
    iget-object v1, p0, Lcom/fiio/music/fragment/x;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$46(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
