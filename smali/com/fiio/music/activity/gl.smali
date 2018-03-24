.class final Lcom/fiio/music/activity/gl;
.super Ljava/lang/Object;
.source "ScanSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ScanSettingActivity;

.field private final synthetic b:Landroid/widget/CheckBox;

.field private final synthetic c:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ScanSettingActivity;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/gl;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/fiio/music/activity/gl;->c:Landroid/app/AlertDialog;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    iget-object v0, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanSettingActivity;->access$1(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanSettingActivity;->access$5(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "FILTER_SIZE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    iget-object v1, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanSettingActivity;->access$6(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    const v3, 0x7f0c004d

    invoke-virtual {v2, v3}, Lcom/fiio/music/activity/ScanSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/activity/gl;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const-string v1, "FILTER_SWITCH"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    iget-object v0, p0, Lcom/fiio/music/activity/gl;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 230
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanSettingActivity;->access$7(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const-string v1, "FILTER_SIZE"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    iget-object v1, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanSettingActivity;->access$6(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Lcom/fiio/music/activity/ScanSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_1
    const-string v1, "FILTER_SIZE"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 220
    iget-object v1, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanSettingActivity;->access$6(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    const v3, 0x7f0c004f

    invoke-virtual {v2, v3}, Lcom/fiio/music/activity/ScanSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_2
    const-string v1, "FILTER_SWITCH"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    iget-object v1, p0, Lcom/fiio/music/activity/gl;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanSettingActivity;->access$6(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
