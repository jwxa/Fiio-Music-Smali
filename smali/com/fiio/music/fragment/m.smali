.class final Lcom/fiio/music/fragment/m;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/m;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1050
    if-eqz p2, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/fiio/music/fragment/m;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$11(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1052
    iget-object v0, p0, Lcom/fiio/music/fragment/m;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$10(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1053
    const-string v1, "DOWNLOAD_POSITION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1054
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1056
    :cond_0
    return-void
.end method
