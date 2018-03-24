.class final Lcom/fiio/music/fragment/aa;
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
    iput-object p1, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/aa;->b:Landroid/app/AlertDialog;

    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$49(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1607
    iget-object v1, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$48(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1608
    iget-object v1, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$50(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c0084

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    const-string v1, "MEMORY"

    const-string v2, "LOCATION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1614
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$4(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1615
    iget-object v1, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$50(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1616
    const-string v1, "SWITCH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1621
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1622
    iget-object v0, p0, Lcom/fiio/music/fragment/aa;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    return-void

    .line 1610
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$47(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    iget-object v1, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$50(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/aa;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c0083

    invoke-virtual {v2, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1612
    const-string v1, "MEMORY"

    const-string v2, "LIST"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1618
    :cond_2
    const-string v1, "SWITCH"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
