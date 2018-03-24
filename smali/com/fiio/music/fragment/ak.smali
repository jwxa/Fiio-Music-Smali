.class final Lcom/fiio/music/fragment/ak;
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
    iput-object p1, p0, Lcom/fiio/music/fragment/ak;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/ak;->b:Landroid/app/AlertDialog;

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v2, 0xa

    .line 911
    iget-object v0, p0, Lcom/fiio/music/fragment/ak;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$1(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 912
    iget-object v0, p0, Lcom/fiio/music/fragment/ak;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$2(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 913
    iget-object v0, p0, Lcom/fiio/music/fragment/ak;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0, v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$3(Lcom/fiio/music/fragment/SettingMenuFragment;I)V

    .line 915
    :cond_0
    const-string v0, "SLEEP_PROGRESS"

    iget-object v2, p0, Lcom/fiio/music/fragment/ak;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$2(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 916
    iget-object v0, p0, Lcom/fiio/music/fragment/ak;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    .line 917
    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->cancelAutoShutdown()V

    .line 918
    iget-object v2, p0, Lcom/fiio/music/fragment/ak;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$4(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 919
    const-string v2, "SLEEP_SWITCH"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 920
    iget-object v2, p0, Lcom/fiio/music/fragment/ak;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$2(Lcom/fiio/music/fragment/SettingMenuFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/ListMainActivity;->registerAutoShutdown(I)V

    .line 926
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 927
    iget-object v0, p0, Lcom/fiio/music/fragment/ak;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 928
    return-void

    .line 923
    :cond_1
    const-string v0, "SLEEP_SWITCH"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
